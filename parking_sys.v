// parking management system.
module parking_sys(clk,rst,car_entry,car_exit,available_slots,full);
  input clk,rst,car_entry,car_exit;
  output reg [3:0] available_slots;
  output reg full;
  parameter total_slots=10;
  always@(posedge clk or posedge rst)
    begin
      if(rst)
          available_slots<=total_slots;
      else if(car_entry&&available_slots)
          available_slots<=available_slots-1;
      else if(car_exit&&available_slots<total_slots)
          available_slots<=available_slots+1;
    end
  always@(*)
    begin
      if(available_slots==0)
        full=1;
      else
        full=0;
    end
endmodule
          