
`timescale 1ns/1ns

module inst_mem_tb;

 reg [31:0]	address_tb;

 wire [31:0]	inst_tb;

 integer i;

inst_mem UUT( 
			.address	( address_tb ),
			.inst	( inst_tb )  );

initial begin




  for ( i=0 ; i<8 ; i=i+1 )
  begin
     address_tb = i; 
     #10;
  end


 $finish();

 end
 
endmodule


