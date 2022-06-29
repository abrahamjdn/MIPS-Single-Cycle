`timescale 1ns/1ns

module control_unit_tb;

 reg [5:0]	Opcode_tb;

 wire	 RegDst_tb;
 wire	RegWrite_tb;
 wire	ALUSrc_tb;
 wire	 MemtoReg_tb;
 wire	MemRead_tb;
 wire	MemWrite_tb;
 wire	 Branch_tb;
 wire	 ALUOp1_tb;
 wire	ALUOp0_tb;


control_unit UUT( 
			.Opcode	( Opcode_tb ),
			.RegDst	(  RegDst_tb ),
			.RegWrite	( RegWrite_tb ),
			.ALUSrc	( ALUSrc_tb ),
			.MemtoReg	(  MemtoReg_tb ),
			.MemRead	( MemRead_tb ),
			.MemWrite	( MemWrite_tb ),
			.Branch	(  Branch_tb ),
			.ALUOp1	(  ALUOp1_tb ),
			.ALUOp0	( ALUOp0_tb )  );

initial begin



 Opcode_tb	=	6'b000000; //r
 #10;
Opcode_tb	=	6'b100011; //lw
 #10;
 Opcode_tb	=	6'b101011; //sw
 #10;
 Opcode_tb	=	6'b000100; //beq
 #10;
 Opcode_tb	=	6'b000000;
 #10;
 

 $finish();

 end
endmodule