module ROM_RAM_tb();
    reg clk, rst;
    reg [2:0] addr1, addr2, reg_addr;
    wire [7:0] result;
   
    top uut(clk, rst, addr1, addr2, reg_addr, result);
   
    always begin
        #5 clk = ~clk;
    end
   
    initial begin
        clk = 0; rst = 1; addr1 = 3'b000; addr2 = 3'b001; reg_addr = 3'b000;
        #10 rst = 0;
        #100 rst = 1;
        #10 rst = 0; addr1 = 7; addr2 = 6; reg_addr = 3;
        #100 $stop;
       
    end
endmodule
