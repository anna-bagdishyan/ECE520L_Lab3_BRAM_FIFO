# ECE520L Lab3 BRAM FIFO

## Overview  
This lab involved implementing a single-clock FIFO in Verilog using BRAM. The FIFO was designed to store 32 entries with each entry being 16 bits wide. The design includes read and write control and a valid output signal. A block memory generator IP was used to implement the FIFO memory.

## Design Summary
The sc_fifo module uses a write pointer, read pointer, and an entry counter to keep track of the data stored in the FIFO. The FIFO was designed to have a depth of 32 and a width of 16 bits. The wr_accept and rd_accept signals determine whether a write or read operation is allowed. A write is accepted when write_fifo is enabled and the FIFO is not full. A read is accepted when read_fifo is enabled and the FIFO is not empty.  

The entry_count signal keeps track of the number of entries stored in the FIFO. The full signal indicates when the entry count is 32, while the empty signal indicates whether the entry count is 0. The entry counter is incremented when a write is accepted without a read, decremented when a read is accepted without a write, and does not change when both operations occur during the same clock cycle.  

The FIFO was implemented using the blk_mem_gen_0 block memory generator IP. The write port is enabled when a write is accepted, and the read port is enabled when a read is accepted. The parameter READ_LATENCY determines the delay on the data output. If READ_LATENCY is 1, the data is available after one clock cycle. If the value is increased, the data output is delayed by the corresponding number of clock cycles.

## Verification and Results
The FIFO was verified using a testbench with a 50 MHz clock. The testbench first checked the reset behavior to make sure that the FIFO was empty, not full, had an entry count of 0, and had a data outuput of 0 after reset.

The second test writes the value 0xFFFF until the FIFO has 32 entries. The full flag and entry counter is then checked. An additional write is attempted while the FIFO is full to verify that the entry count did not increase beyond 32. The 32 values were then read from the FIFO. Test 3 repeats the process of test 2 using 0x0000.

Test 4 checks the functionality of the almost_full and almost_empty flags. The FIFO was filled to 31 entries to test the almost_full signal, and entries were read until only one entry remained to test the almost_empty signal. Test 5 attempts a read while the FIFO is empty to verify that the entry count didn't change. Test 6 writes alternating data values, then reads them in order and is compared with the expected pattern.

A python script was used to generate 16-bit hexadecimal values. The provided script was modified to generate 32 values and to generate values from 0x0000 to 0xFFFF. The generated values were stored in input_data.txt. The values were written into the FIFO and then read back and compared with the original generated values.

## Known Issues or Limitations
The design works as intended, with no current known issues.

## References
ECE 520/L Lab 3 - BRAM FIFO Manual.
