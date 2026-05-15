// testbench for parking management system.
module tb();
  reg clk,rst,car_entry,car_exit;
  wire [3:0] available_slots;
  wire full;
  parking_sys dut(clk,rst,car_entry,car_exit,available_slots,full);
  always #5 clk=~clk;
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars(1);
      
      clk=0; rst=1; car_entry=0; car_exit=0; #10; rst=0;
      car_entry=1; #10;
      car_entry=0; #10;
      car_exit=1; #10;
      car_exit=0; #40;
      $finish;
    end
  initial
    $monitor($time,"clk=%b,rst=%b,car_entry=%b,car_exit=%b,available_slots=%d,full=%b",clk,rst,car_entry,car_exit,available_slots,full);
endmodule
      
      
      