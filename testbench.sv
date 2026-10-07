// Code your testbench here
// or browse Examples
module tb_voting_machine;

// Inputs to the voting machine
reg clk;
reg rst;
reg vote_C1;
reg vote_C2;
reg vote_C3;

// Outputs from the voting machine
wire [3:0] count_C1;
wire [3:0] count_C2;
wire [3:0] count_C3;

// Instantiate the voting machine
voting_machine uut (
    .clk(clk),
    .rst(rst),
    .vote_C1(vote_C1),
    .vote_C2(vote_C2),
    .vote_C3(vote_C3),
    .count_C1(count_C1),
    .count_C2(count_C2),
    .count_C3(count_C3)
);

// Clock generation
always #5 clk = ~clk; // Clock period = 10 time units

// Test sequence
initial begin
    // Initialize inputs
    clk = 0;
    rst = 1;
    vote_C1 = 0;
    vote_C2 = 0;
    vote_C3 = 0;

    // Dump waveforms to VCD file
    $dumpfile("voting_machine.vcd"); // Name of the VCD file
    $dumpvars(0, tb_voting_machine); // Dump all variables at module level 0
    
    // Apply reset
    #10 rst = 0; // Release reset after 10 time units

    // Simulate voting
    #20 vote_C1 = 1; #10 vote_C1 = 0; // 1 vote for C1
    #20 vote_C2 = 1; #10 vote_C2 = 0; // 1 vote for C2
    #20 vote_C3 = 1; #10 vote_C3 = 0; // 1 vote for C3
    #20 vote_C1 = 1; #10 vote_C1 = 0; // Another vote for C1
    #20 vote_C2 = 1; #10 vote_C2 = 0; // Another vote for C2

    // Reset the votes
    #50 rst = 1;
    #10 rst = 0; // Release reset again

    // End simulation after some time
    #100 $finish;
end

endmodule