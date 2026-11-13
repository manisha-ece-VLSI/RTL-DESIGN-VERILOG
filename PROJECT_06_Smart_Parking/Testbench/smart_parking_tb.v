module smart_parking_tb;
reg clk,rst,entry,exit;
wire [3:0] available_slots;
wire parking_full,parking_empty,entry_allowed,exit_allowed;
smart_parking dut(
.clk(clk),
.rst(rst),
.entry(entry),
.exit(exit),
.available_slots(available_slots),
.parking_full(parking_full),
.parking_empty(parking_empty),
.entry_allowed(entry_allowed),
.exit_allowed(exit_allowed)
);
// clock generation
initial
begin
clk = 0;
forever #5 clk = ~clk;
end
initial
begin
$monitor("Time=%0t | Entry=%b Exit=%b | Slots=%d | Full=%b Empty=%b | Entry_Allowed=%b Exit_Allowed=%b",
    $time, entry, exit, available_slots,
    parking_full, parking_empty,
    entry_allowed, exit_allowed);
    rst = 1;
    entry = 0;
    exit = 0;

    #10;
    rst = 0;

    // Vehicle 1 enters
    #10 entry = 1;
    #10 entry = 0;

    // Vehicle 2 enters
    #10 entry = 1;
    #10 entry = 0;

    // Vehicle 3 enters
    #10 entry = 1;
    #10 entry = 0;

    // One vehicle exits
    #10 exit = 1;
    #10 exit = 0;

    // Simultaneous entry and exit
    #10;
    entry = 1;
    exit = 1;

    #10;
    entry = 0;
    exit = 0;

    // Fill remaining parking slots
    repeat(8)
    begin
        #10 entry = 1;
        #10 entry = 0;
    end

    // Try entry when parking is full
    #10 entry = 1;
    #10 entry = 0;

    // Vehicle exits
    #10 exit = 1;
    #10 exit = 0;

    // Empty the parking area
    repeat(10)
    begin
        #10 exit = 1;
        #10 exit = 0;
    end

    // Try exit when parking is empty
    #10 exit = 1;
    #10 exit = 0;

    #20;
    $finish;

end

endmodule

