
module TB_Lab3();
  reg [3:0] A,B;
  reg CI;
  wire [6:0] seg;
  wire [3:0] an;
  wire dp;
  wire CO;

  FourBitFullAdderDisplay uut( .A(A), .B(B), .CI(CI), .seg(seg), .an(an), .dp(dp), .CO(CO));

  integer i;
  integer j;

  initial begin 
    A = 4'b0000;
    B = 4'b0000;
    CI = 1'b0;

    for(i = 0; i < 16; i = i + 1) begin
      A = i;
      for( j = 0; j < 16; j = j + 1) begin
        B = j;

        CI = 1'b0;
        #10;
        CI = 1'b1;
        #10;
      end
    end
    $stop;
  end
endmodule
        
