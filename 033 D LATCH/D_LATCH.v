`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : D LATCH
//Module  Name : D_LATCH
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module D_LATCH(D_IN,rst,Q);
input D_IN,rst;
output reg Q;

always@(rst,D_IN) begin
    if(rst)
        Q<=0;
    else
        Q<=D_IN;
end
endmodule
