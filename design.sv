// Code your design here
module voting_machine(
    input clk,          // Clock signal
    input rst,          // Reset signal
    input vote_C1,      // Button for candidate 1
    input vote_C2,      // Button for candidate 2
    input vote_C3,      // Button for candidate 3
    output reg [3:0] count_C1,   // Vote count for candidate 1
    output reg [3:0] count_C2,   // Vote count for candidate 2
    output reg [3:0] count_C3    // Vote count for candidate 3
);

// Sequential logic for vote counting
always @(posedge clk or posedge rst) begin
    if (rst) begin
        // Reset all vote counts to zero
        count_C1 <= 4'd0;
        count_C2 <= 4'd0;
        count_C3 <= 4'd0;
    end else begin
        // Voting logic
        if (vote_C1) count_C1 <= count_C1 + 1;
        if (vote_C2) count_C2 <= count_C2 + 1;
        if (vote_C3) count_C3 <= count_C3 + 1;
    end
end

endmodule