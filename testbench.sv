// Code your testbench here
// or browse Examples
module tb_traffic_light;
    reg clk;
    reg reset;
    wire [2:0] lights;

    // Instantiate the design
    traffic_light dut (
        .clk(clk),
        .reset(reset),
        .lights(lights)
    );

    // Generate Clock: Toggles every 5 time units
    always #5 clk = ~clk;

    initial begin
        // Initialize signals
        $dumpfile("dump.vcd"); // Required for EDA Playground waveforms
        $dumpvars(1);
        
        clk = 0;
        reset = 1;
        #20 reset = 0;   // Release reset after 20 units

        #500 $finish;    // Run simulation for 500 units then stop
    end
endmodule