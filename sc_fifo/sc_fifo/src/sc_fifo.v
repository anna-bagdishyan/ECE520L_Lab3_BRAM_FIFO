//////////////////////////////////////////////////////////////////////////////////
// Title      : CSUN ECE 520 Lab 3
// Project    : BRAM FIFO
//////////////////////////////////////////////////////////////////////////////////
// File       : sc_fifo.v<sc_fifo.srcs>
// Author     : Anna Bagdishyan 203475460
// Company    : CSUN
// Created    : 2026-09-21
// Last update: 2026-09-29
// Platform   :
// Standard   : SystemVerilog
//////////////////////////////////////////////////////////////////////////////////
// Description: Top file for sc_fifo.v
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 1ps

module sc_fifo #(
    parameter WIDTH = 16,
    parameter DEPTH = 32,
    parameter ALMOST_FULL_THRESHOLD = 31,
    parameter ALMOST_EMPTY_THRESHOLD = 1,
    parameter READ_LATENCY = 1,

    parameter PTR_WIDTH = $clog2(DEPTH),
    parameter COUNT_WIDTH = $clog2(DEPTH + 1)
)(
    input wire clk,
    input wire SRST,

    input wire write_fifo,
    input wire [WIDTH-1:0] data_in,
    input wire read_fifo,

    output wire [WIDTH-1:0] data_out,
    output wire valid,

    output wire full,
    output wire almost_full,
    output wire almost_empty,
    output wire empty,

    output wire [COUNT_WIDTH-1:0] entry
);

    // number of entries currently stored in FIFO
    reg [COUNT_WIDTH-1:0] entry_count;

    // write/read pointers
    reg [PTR_WIDTH-1:0] wr_ptr;
    reg [PTR_WIDTH-1:0] rd_ptr;

    wire wr_accept;
    wire rd_accept;

    assign full  = (entry_count == DEPTH);
    assign empty = (entry_count == 0);

    assign wr_accept = write_fifo && !full;
    assign rd_accept = read_fifo && !empty;

    assign almost_full =
        (entry_count >= ALMOST_FULL_THRESHOLD);

    assign almost_empty =
        (entry_count <= ALMOST_EMPTY_THRESHOLD);

    assign entry = entry_count;

    // output from block RAM
    wire [WIDTH-1:0] bram_data_out;

    // pipeline stages for READ_LATENCY
    reg [WIDTH-1:0] data_pipeline [0:READ_LATENCY-1];
    reg valid_pipeline [0:READ_LATENCY-1];

    // valid signal for BRAM read
    reg valid_bram;

    integer i;

    // block Memory Generator
    blk_mem_gen_0 fifo_mem (
        .clka(clk),
        .ena(wr_accept),
        .wea(wr_accept),
        .addra(wr_ptr),
        .dina(data_in),
        .douta(),

        .clkb(clk),
        .enb(rd_accept),
        .web(1'b0),
        .addrb(rd_ptr),
        .dinb({WIDTH{1'b0}}),
        .doutb(bram_data_out)
    );

    // final pipeline is FIFO output
    assign data_out = data_pipeline[READ_LATENCY-1];
    assign valid = valid_pipeline[READ_LATENCY-1];

    always @(posedge clk) begin
        if (SRST) begin
            entry_count <= 0;
            wr_ptr <= 0;
            rd_ptr <= 0;

            valid_bram <= 1'b0;

            for (i = 0; i < READ_LATENCY; i = i + 1) begin
                data_pipeline[i] <= 0;
                valid_pipeline[i] <= 1'b0;
            end
        end
        else begin
            // delay accepted read indication to match BRAM data
            valid_bram <= rd_accept;

            data_pipeline[0] <= bram_data_out;
            valid_pipeline[0] <= valid_bram;

            // pipeline stages for READ_LATENCY > 1
            for (i = 1; i < READ_LATENCY; i = i + 1) begin
                data_pipeline[i] <= data_pipeline[i-1];
                valid_pipeline[i] <= valid_pipeline[i-1];
            end

            // write data into FIFO
            if (wr_accept) begin
                if (wr_ptr == DEPTH-1)
                    wr_ptr <= 0;
                else
                    wr_ptr <= wr_ptr + 1'b1;
            end

            // read data from FIFO
            if (rd_accept) begin
                if (rd_ptr == DEPTH-1)
                    rd_ptr <= 0;
                else
                    rd_ptr <= rd_ptr + 1'b1;
            end

            // keep track of number of entries
            if (wr_accept && !rd_accept) begin
                entry_count <= entry_count + 1'b1;
            end
            else if (rd_accept && !wr_accept) begin
                entry_count <= entry_count - 1'b1;
            end
            else begin
                entry_count <= entry_count;
            end
        end
    end

endmodule