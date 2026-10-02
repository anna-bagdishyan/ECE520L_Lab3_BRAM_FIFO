//////////////////////////////////////////////////////////////////////////////////
// Title      : CSUN ECE 520 Lab 3
// Project    : BRAM FIFO
//////////////////////////////////////////////////////////////////////////////////
// File       : tb_sc_fifo.v<sc_fifo.sim>
// Author     : Anna Bagdishyan 203475460
// Company    : CSUN
// Created    : 2026-09-21
// Last update: 2026-09-29
// Platform   :
// Standard   : SystemVerilog
//////////////////////////////////////////////////////////////////////////////////
// Description: Testbench for sc_fifo.v
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 1ps

module tb_sc_fifo;

    parameter WIDTH = 16;
    parameter DEPTH = 32;
    parameter COUNT_WIDTH = $clog2(DEPTH + 1);
    parameter READ_LATENCY = 1;

    reg clk;
    reg SRST;

    reg write_fifo;
    reg [WIDTH-1:0] data_in;
    reg read_fifo;

    reg [15:0] python_data [0:7];

    integer i;

    wire [15:0] data_out;
    wire valid;

    wire full;
    wire empty;
    wire almost_full;
    wire almost_empty;
    wire [COUNT_WIDTH-1:0] entry;

    // DUT
    sc_fifo #(
        .WIDTH(WIDTH),
        .DEPTH(DEPTH),
        .READ_LATENCY(READ_LATENCY)
    ) DUT (
        .clk(clk),
        .SRST(SRST),

        .write_fifo(write_fifo),
        .data_in(data_in),
        .read_fifo(read_fifo),

        .data_out(data_out),
        .valid(valid),

        .full(full),
        .almost_full(almost_full),
        .almost_empty(almost_empty),
        .empty(empty),

        .entry(entry)
    );
    
    // 20 ns period = 50 MHz clk
    always #10 clk = ~clk;
    
    initial begin
    clk = 0;
    SRST = 1;
    write_fifo = 0; 
    data_in = 0;
    read_fifo = 0;
    i = 0;
    
    // holding reset for 2 clk cycles
    #40;
    SRST = 0;
    
    // Test 1 - check reset
    #1;
    
    if (empty != 1'b1) begin
        $display("FAILED: FIFO should be empty after reset");
        $finish;
    end
    if (full != 1'b0) begin
        $display("FAILED: FIFO should not be full after reset");
        $finish;
    end
    if (entry != 6'd0) begin
        $display("FAILED: FIFO entry count should be 0 after reset");
        $finish;
    end
    if (data_out != 16'h0000) begin
        $display("FAILED: FIFO output should be 0 after reset");
        $finish;
    end
    
    // Test 2 - write and read all A's
    data_in = 16'hFFFF;
    write_fifo = 1;

    for (i = 0; i < DEPTH; i = i + 1) begin
        @(posedge clk);
        #1;
    end

    write_fifo = 0;

    if (full !== 1'b1) begin
        $display("FAILED: FIFO should be full");
        $finish;
    end

    if (entry !== 6'd32) begin
        $display("FAILED: Entry count should be 32");
        $finish;
    end

    // testing overflow
    write_fifo = 1;
    @(posedge clk);
    #1;
    
    write_fifo = 0;
    if (entry !== 6'd32) begin
        $display("FAILED: Entry count should not update when full");
        $finish;
    end

    if (full !== 1'b1) begin
        $display("FAILED: FIFO should be full after writing overflow");
        $finish;
    end

    read_fifo = 1;
    @(posedge clk);
    #1;
    for (i=0; i < DEPTH; i = i + 1) begin
        @(posedge clk);
        #1;
        
        if (valid !== 1) begin
            $display("FAILED: valid should be 1");
            $finish;
        end
        if (data_out != 16'hFFFF) begin
            $display("FAILED: Read value should be 0xFFFF");
            $finish;
        end
    end
    read_fifo = 0;
    
    // Test 3 - Writing all 0's
    data_in = 16'h0000;
    write_fifo = 1;

    for (i = 0; i < DEPTH; i = i + 1) begin
        @(posedge clk);
        #1;
    end

    write_fifo = 0;

    if (full !== 1'b1) begin
        $display("FAILED: FIFO should be full");
        $finish;
    end

    if (entry !== 6'd32) begin
        $display("FAILED: Entry count should be 32");
        $finish;
    end

    read_fifo = 1;
    @(posedge clk);
    #1;
    for (i=0; i < DEPTH; i = i + 1) begin
        @(posedge clk);
        #1;
        
        if (valid !== 1) begin
            $display("FAILED: valid should be 1");
            $finish;
        end
        if (data_out != 16'h0000) begin
            $display("FAILED: Read value should be 0x0000");
            $finish;
        end
    end
    read_fifo = 0;
    
    // Test 4 - checking almost_full and almost_empty flags
    data_in = 16'h4321;
    write_fifo = 1;

    for (i = 0; i < DEPTH-1; i = i + 1) begin
        @(posedge clk);
        #1;
    end

    write_fifo = 0;

    if (almost_full !== 1) begin
        $display("FAILED: FIFO should be almost full");
        $finish;
    end

    read_fifo = 1;

    for (i = 0; i < DEPTH-2; i = i + 1) begin
        @(posedge clk);
        #1;
    end

    read_fifo = 0;

    if (almost_empty !== 1) begin
        $display("FAILED: FIFO should be almost empty");
        $finish;
    end

    read_fifo = 1'b1;

    @(posedge clk);
    #1;
    read_fifo = 0;
    
    // Test 5 - Reading on empty
    read_fifo = 1;
    @(posedge clk);
    #1; 
    read_fifo = 0;
    
    if (entry != 6'd0) begin
        $display("FAILED: Entry count shouldn't change when reading");
        $finish;
    end
    
    // Test 5 - Writing alternating data values
    write_fifo = 1;
    
    for (i = 0; i < 8; i = i + 1) begin
        if ((i % 2) == 0) begin // every other entry
            data_in = 16'hAAAA;
        end
        else begin
            data_in = 16'h5555;
        end
        @(posedge clk);
        #1;
    end

   write_fifo = 0; 
    
    if (entry != 6'd8) begin
        $display("FAILED: Entry count should be 8");
        $finish;
    end

    read_fifo = 1;
    @(posedge clk);
    #1;

    for (i = 0; i < 8; i = i + 1) begin
        @(posedge clk);
        #1;

        if (valid !== 1) begin
            $display("FAILED: valid should be 1");
            $finish;
        end

        if ((i % 2) == 0) begin
            if (data_out !== 16'hAAAA) begin
                $display("FAILED: data value should be 0xAAAA");
                $finish;
            end
        end
        else begin
            if (data_out !== 16'h5555) begin
                $display("FAILED: data value should be 0x5555");
                $finish;
            end
        end
    end
    read_fifo = 0;

    // Test 6 - testing python script
    
   // reading python data
    $readmemh("input_data.txt", python_data);
    
    // will only write non XXXX values
    // ensures only written values in python script are inserted
    for (i = 0; i < 8 && python_data[i] !== 16'hXXXX; i=i+1) begin
        data_in = python_data[i];
        write_fifo = 1;
        
        @(posedge clk);
        #1;
    end
    write_fifo = 0;

    read_fifo = 1;
    
    @(posedge clk);
    #1;
    for (i = 0; i < 8 && python_data[i] !== 16'hXXXX; i=i+1) begin

        @(posedge clk);
        #1;

        if (valid !== 1'b1) begin 
            $display("FAILED: valid should be 1"); 
            $finish; 
        end

        if (data_out != python_data[i]) begin
            $display("FAILED: data value should be %04h", python_data[i]);
            $finish;
        end
        
    end
    read_fifo = 0;
    $display("TEST PASSED");
    $finish;
    end
    
    initial begin
    #1_0000_0000;
    $display ("TEST FAILED: TIMOUT");
    $finish;
    end
endmodule
