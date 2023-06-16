module sevenseg (
    input  logic [3:0] data,
    output logic [6:0] segments
);
  always_comb
    case (data)
      // abc_defg       7654 3210 
      0: segments = ~7'b011_1111;
      1: segments = ~7'b000_0110;
      2: segments = ~7'b101_1011;
      3: segments = ~7'b100_1111;
      4: segments = ~7'b110_0110;
      5: segments = ~7'b110_1101;
      6: segments = ~7'b111_1101;
      7: segments = ~7'b000_0111;
      8: segments = ~7'b111_1111;
      9: segments = ~7'b110_1111;
      default: segments = ~7'b0000_0000;
    endcase
endmodule
