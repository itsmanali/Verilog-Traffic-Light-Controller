// Code your design here
module traffic_light (
    input clk,
    input reset,
    output reg [2:0] lights
);
    reg [1:0] state;
    
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            state <= 2'b00;
            lights <= 3'b100; // Start at Red
        end else begin
            case (state)
                2'b00: begin state <= 2'b01; lights <= 3'b001; end // Green
                2'b01: begin state <= 2'b10; lights <= 3'b010; end // Yellow
                2'b10: begin state <= 2'b00; lights <= 3'b100; end // Red
            endcase
        end
    end
endmodule