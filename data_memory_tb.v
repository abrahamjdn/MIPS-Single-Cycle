`timescale 1ns/100ps
//`include "C:\quartus\Diplomado\mips_single_cycle\data_mem.txt"
module data_memory_tb();
	reg clk;
	reg [7:0] address;
	reg memwrite;
	reg [31:0] writeData; 
	wire [31:0] readData;


data_memory dut (clk, address, memwrite, writeData, readData);

initial begin
	clk=0;
	address=0;
	#20;
	address=1;
	#20;
	address=2;
	#20;
	address=3;
	#20;
	address=4;
	#20;
	address=5;
	#20;
	$finish();
end

always 
	#10 clk = ~clk;
	
	
endmodule 