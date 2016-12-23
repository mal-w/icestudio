// Code generated by Icestudio 0.3.0-beta
// Fri, 23 Dec 2016 14:45:42 GMT

// Testbench template

`default_nettype none
`define DUMPSTR(x) `"x.vcd`"
`timescale 10 ns / 1 ns


module main_tb;
 
 // Simulation time: 100ns (10 * 10ns)
 parameter DURATION = 10;
 
 // TODO: edit the module parameters here
 // e.g. localparam constant_value = 1;
 localparam constant_N = 20;
 
 // Input/Output
 reg input_clk;
 reg input_Button 1;
 reg input_Button 2;
 wire output_LED 5;
 wire output_LED 4;
 wire [3:0] output_LEDs;
 
 // Module instance
 main #(
  .v30f40a(constant_N)
 ) MAIN (
  .v7c9917(input_clk),
  .vb8a806(input_Button 1),
  .ve0befb(input_Button 2),
  .v32232e(output_LED 5),
  .v1d1af8(output_LED 4),
  .v6a65cd(output_LEDs)
 );
 
 // Clock signal
 always #0.5 input_clk = ~input_clk;
 
 initial begin
  // File were to store the simulation results
  $dumpfile(`DUMPSTR(`VCD_OUTPUT));
  $dumpvars(0, main_tb);
 
  // TODO: initialize the registers here
  // e.g. input_value = 1;
  // e.g. #2 input_value = 0;
  input_clk = 0;
  input_Button 1 = 0;
  input_Button 2 = 0;
 
  #(DURATION) $display("End of simulation");
  $finish;
 end
 
endmodule