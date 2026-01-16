module blink (
    input wire clk,      // 50MHz
    output reg led
);

reg [24:0] counter;

always @(posedge clk) begin
    counter <= counter + 1;
    if (counter == 25'd24_999_999) begin
        counter <= 0;
        led <= ~led;
    end
end

endmodule
