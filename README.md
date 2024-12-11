# FPGA10

Top module takes to addresses for ROM, reads the values from the ROM, multiplies them, and stores the value in the given address for the RAM.


For the ROM, I utilized a case statement to choose which address to read from depending on the input. For the RAM, I utilized customizable width parameters and a conditional to choose between reading and writing from memory. For the top module, I instantiated the control unit, ROM, register file, multiplier, and RAM according to the diagram, using wire variables to connect the outputs of one module to the inputs of another. 
