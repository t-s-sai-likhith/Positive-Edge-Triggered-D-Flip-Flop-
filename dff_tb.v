`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.07.2026 22:30:32
// Design Name: 
// Module Name: dff_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////



module dff_tb;

reg clk;
reg rst;
reg d;

wire q;

dff dut(
    .clk(clk),
    .rst(rst),
    .d(d),
    .q(q)
);

// Clock Generation
initial
begin
    clk = 0;
    forever #10 clk = ~clk;
end

// Test Stimulus
initial
begin

    rst = 1;
    d   = 0;

    #20;

    rst = 0;

    d = 0;
    #20;

    d = 1;
    #20;

    d = 0;
    #20;

    d = 1;
    #20;

    rst = 1;
    #20;

    rst = 0;
    d = 1;
    #20;

    d = 0;
    #20;

  #150  $finish;

end

// Monitor
initial
begin
    $monitor("Time=%0t | rst=%b | clk=%b | d=%b | q=%b",
              $time,rst,clk,d,q);
end

endmodule
