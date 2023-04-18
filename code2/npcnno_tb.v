module npcnn_tb();

reg [7:0]a;
reg [8:0]b;
reg go,clk,reset;
wire [19:0]out;
wire done;

npcnn #(6,3,1,0) npcnn1(out,done,a,b,go,clk,reset);

always begin #50 clk=~clk; end

initial
	begin
	clk=1'b1;reset=1'b1;go=1'b0;
	a=8'b0;b=9'b0;
	#100 reset=1'b0; go=1'b1;
	//a
	//row=1
	#100 a=8'b11111110;
	#100 a=8'b11111101;
    #100 a=8'b11111101;
    #100 a=8'b11111101;
    #100 a=8'b11111101;
    #100 a=8'b11111011;
	//row=2
    #100 a=8'b11110111;
    #100 a=8'b11101111;
    #100 a=8'b11111101;
    #100 a=8'b11111101;
    #100 a=8'b11111101;
    #100 a=8'b11011111;
	//row=3
    #100 a=8'b10111111;
    #100 a=8'b01111111;
    #100 a=8'b11111101;
    #100 a=8'b11111101;
    #100 a=8'b11111101;
    #100 a=8'b11111111;
	//row=4
	#100 a=8'b11111110;
	#100 a=8'b11111101;
    #100 a=8'b11111101;
    #100 a=8'b11111101;
    #100 a=8'b11111101;
    #100 a=8'b11111011;
    //row=5
	#100 a=8'b11110111;
    #100 a=8'b11101111;
    #100 a=8'b11111101;
    #100 a=8'b11111101;
    #100 a=8'b11111101;
    #100 a=8'b11011111;
    //row=6
	#100 a=8'b10111111;
    #100 a=8'b01111111;
    #100 a=8'b01111111;
    #100 a=8'b01111111;
    #100 a=8'b01111111;
    #100 a=8'b11111111;
	//b
	//row=1
	#100 b=9'b011111110;
	#100 b=9'b011111101;
    #100 b=9'b011111011;
    //row=2
	#100 b=9'b011110111;
    #100 b=9'b011101111;
    #100 b=9'b011011111;
    //row=3
	#100 b=9'b010111111;
    #100 b=9'b001111111;
    #100 b=9'b011111111;
	
	//total clock cycles = 1(reset)+ 1(go)+ as*as+ bs*bs+ (2*bs*bs+1(clearstall))*os*os+ os*os;
	#35000 $stop;
	end

endmodule 