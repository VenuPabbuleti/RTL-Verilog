`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : D LATCH
//Module       : TESTBENCH FOR D LATCH
//Module  Name : TESTBENCH_DLATCH
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////



module TESTBENCH_DLATCH();
reg D_IN,rst;
wire Q;

D_LATCH latch(D_IN,rst,Q);

 
initial begin
 
    $monitor("D IN=%b , reset=%b --> Q=%b",D_IN,rst,Q);
        rst=1;D_IN=1;
    #5 rst=0;
    #7 D_IN=0;
    #7 D_IN=1;
    #7 $finish;
end
endmodule
