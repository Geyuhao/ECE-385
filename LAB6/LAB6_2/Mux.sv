module MUX2_1
(
		input [15:0] A,B,
		input sel,
		output logic [15:0]out
	);
		always_comb
			begin
				case (sel)
					1'b0 : out = A;
					1'b1 : out = B;
					default : out = 16'b0;
				endcase
			end
	endmodule

module MUX3_1
(
		input [15:0] A,B,C,
		input [1:0]sel,
		output logic [15:0]out
	);
		always_comb
			begin
				case (sel)
					2'b00 : out = A;
					2'b01 : out = B;
               2'b11 : out = C;
					default : out = 16'b0;
				endcase
			end
	endmodule

module MUX4_1
(
		input [15:0] A,B,C,D,
		input [3:0]sel,
		output logic [15:0]out
	);
		always_comb
			begin
				case (sel)
					4'b1000 : out = A;
					4'b0100 : out = B;
               4'b0010 : out = C;
               4'b0001 : out = D;
					default : out = 16'bx;
				endcase
			end
	endmodule

	
module MUX4_1_16b
(
		input [15:0] A,B,C,D,
		input [1:0]sel,
		output logic [15:0]out
	);
		always_comb
			begin
				case (sel)
				2'b00 : out = A;
				2'b01 : out = B;
               	2'b10 : out = C;
               	2'b11 : out = D;
					default : out = 16'bx;
				endcase
			end
	endmodule

	
module MUX2_1_3b
(
		input [2:0] A,B,
		input sel,
		output logic [2:0]out
	);
		always_comb
			begin
				case (sel)
					1'b0 : out = A;
					1'b1 : out = B;
					default : out = 3'b0;
				endcase
			end
	endmodule