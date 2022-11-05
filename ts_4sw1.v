//2022-7-23  罗力中，
//四选一逻辑；
module fn_sw_4(a,b,sel,y);
input a;
input b;
input[1:0] sel;
output y;



reg	y;//定义y为reg型的变量；
always@(a or b or sel)begin
	case(sel)
	2'b00:begin y<=a&b;end
	2'b01:begin y<=a|b;end
	2'b10:begin y<=a^b;end
	2'b11:begin y<=~(a^b);end
	endcase


end



endmodule
