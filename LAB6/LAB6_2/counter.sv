module up_counter_load    (    
    input   logic  [15:0]  data     ,  // Parallel load for the counter
    input   logic        load     ,  // Parallel load enable
    // input   logic        enable   ,  // Enable counting
    input   logic        clk      ,  // clock input
    input   logic        reset   ,    // reset input
    output  logic  [15:0]  out        // Output of the counter
);
//-------------Code Starts Here-------
    always_ff @ (posedge clk)
        if (reset) begin
            out <= 16'b0 ;
        end else if (load) begin
            out <= data;
        // end else if (enable) begin
            out <= out + 1;
        end
   
endmodule