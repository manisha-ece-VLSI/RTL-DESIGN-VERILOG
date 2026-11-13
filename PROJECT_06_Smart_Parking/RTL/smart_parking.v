module smart_parking(
input clk,rst,entry,exit,
output reg [3:0] available_slots,
output  parking_full,parking_empty,entry_allowed,exit_allowed
);
// Parking capacity = 10

// Entry and Exit Permission
assign entry_allowed = (available_slots > 0);
assign exit_allowed  = (available_slots < 10);

// Full and Empty Detection
assign parking_full  = (available_slots == 0);
assign parking_empty = (available_slots == 10);

// Parking Counter
always @(posedge clk)
begin
if(rst)
available_slots <= 4'd10;
else
case({entry,exit})
2'b10:
begin
if (available_slots > 0)
available_slots <= available_slots - 1'b1;
end
2'b01:
begin
if(available_slots < 10 )
available_slots <= available_slots+1'b1;
end
2'b11:
begin
available_slots <= available_slots;
end
2'b00:
begin
available_slots <= available_slots;
end
endcase
end
endmodule
