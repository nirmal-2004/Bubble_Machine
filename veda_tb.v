`include "veda.v"
module veda_tb;
reg clk =0;
always #10 clk = ~clk;
reg rst = 0;
reg [4:0] address1;
reg [4:0] address2;
reg [1:0] mode;
reg [31:0] data_in;
wire [31:0] data_out;

data f (clk, rst, address1, address2, mode, data_in, data_out);

initial begin
    #20
    rst = 0;
    address2= 5'b1;
    address1 = 5'b1;
    mode = 2'b1;
    data_in = 0;
    #2
    //    address2 = 5'b1;
    $display("%d", data_out);
    #20
    // address = 5'b1;
    // mode = 2'b1;
    // data_in = 67;
    // $display("%d", data_out);
    rst = 0;
    address2= 5'b1;
    address1 = 5'b1;
    mode = 2'b0;
    data_in = 0;
    $display("%d", data_out);
    $finish;
end









endmodule