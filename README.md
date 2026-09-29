# ECE520L Lab3 BRAM FIFO

## Overview  
This lab involved 

## Design Summary

Talk about top file & python script here.

## Verification and Results
 - Test 1 checks reset functionality by holding reset for two clock cycles and testing whether the FIFO is empty after reset, checks if the entry count is 0, and checks whether the full flag is (1). If these checks fail, a specified fail message is shown in the TCL console.
- Test 2 checks the functionality of writing (in regards to the entry and empty flags) by (hardwriting) the value 0xAAAA to data_in. The test fails if, after writing the value, empty is 0 (shouldn't be 0 after writing a value) or if the entry count does not update to 1.
- Test 3 tests the read functionality after writing a value (0xAAAA). If data_out is not 0xAAAA or if the entry count doesn't decrease after reading the value, the test fails and a fail message is displayed in the TCL console.
- Test 4 writes values until the FIFO is full and tests whether the full (wire) is full.
- Test 5 builds on test 4 by attempting to write another value to a full FIFO. This is done by checking the entry (variable). If entry has updated and is no longer 8 (max it can be), then the test fails.
- Test 6 reads until the FIFO is empty again. Data_out should have the value that was written last, and entry count should be 0 again.
- Test 7 attempts to read an empty FIFO. During this test, the entry count should not change.
- Test 8 writes different data values and reads them. If when reading the data is not (in intended order, FIFO) then the test fails.
- Test 9 no longer hard writes values to the FIFO. A python script is used to (make the values and store them in the input_data.txt file). In test 9, this functionality is tested. If when reading, the data_out is not the intended value, the test fails. 

## Known Issues or Limitations
The design works as intended, with no current known issues.

## References
ECE 520/L Lab 3 - RAM FIFO Manual.
