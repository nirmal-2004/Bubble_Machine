module data (input clk, input rst, input [4:0] address1, input [4:0] address2,input [1:0] mode, input [31:0] data_in, output reg [31:0] data_out); //VEDA memory
    reg [31:0] data_memory [31:0];
    initial begin
        data_memory[0] = 32'd78; 
        data_memory[1] = 32'd456;
        data_memory[2] = 32'd1;
        data_memory[3] = 32'd89;
        data_memory[4] = 32'd13;
        data_memory[5] = 32'd56;
        data_memory[6] = 32'd267;
        data_memory[7] = 32'd102;
        data_memory[8] = 32'd3;
        data_memory[9] = 32'd51;
        data_memory[10] = 32'd0; //s0
        data_memory[11] = 32'd9; //s6
        data_memory[12] = 32'd0; //s1
        data_memory[13] = 32'd0; //t3
        data_memory[14] = 32'd10; //t4
        data_memory[15] = 32'd0; //t7
        data_memory[16] = 32'd0; //t0
        data_memory[17] = 32'd0; //t1
        data_memory[18] = 32'd0; //s7
        data_memory[19] = 32'd0; //s5
        data_memory[21] = 32'b0;
        data_memory[22] = 32'b0;
        data_memory[23] = 32'b0;
        data_memory[24] = 32'b0;
        data_memory[25] = 32'b0;
        data_memory[26] = 32'b0;
        data_memory[27] = 32'b0;
        data_memory[20] = 32'b0;
        data_memory[28] = 32'b0;
        data_memory[29] = 32'b0;
        data_memory[30] = 32'b0;
        data_memory[31] = 32'b0;
    end
    integer i;
    // reg [4:0] out_reg;
    always @(posedge clk or address1 or data_in) begin
        if (rst == 1) begin
            for(i=0;i<32;i=i+1)
        begin
            data_memory[i]=0;
        end
    end
        else if(mode==2'b1)begin
            data_memory[address1]= data_in;
            // out_reg = address2; 
        end
        // else if (mode==2'b0)
        //     out_reg = address2; 
    end
    // assign data_out= data_memory[out_reg];
    always@(posedge clk or address2) begin
data_out = data_memory[address2];
    end
endmodule