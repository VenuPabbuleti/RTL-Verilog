`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Author      : Venu Pabbuleti 
// ID          : N180116
//Branch       : ECE
//Project Name : RTL design using Verilog
//Design  Name : JK FLIPFLOP
//Module       : TESTBENCH FOR JK FLIP FLOP
//Module  Name : TB_JKFF
//RGUKT NUZVID 
//////////////////////////////////////////////////////////////////////////////////


module TB_JKFF();
reg clk,rst,J,K;
wire Q;

JK_FF ff(clk,rst,J,K,Q);

initial clk=0;
always #5 clk=~clk;

initial begin
    $monitor("J=%b , K=%b --> Q=%b",J,K,Q);
        rst=1;
    #10 rst=0;J=0;K=0;
    #10 J=0;K=1;
    #10 J=1;K=0;
    #10 J=1;K=1;
    #10 J=1;K=0;
    #10 J=0;K=1;
    #10 J=0;K=0;
    #10 J=1;K=1;
    #10 $finish;
end
endmodule

