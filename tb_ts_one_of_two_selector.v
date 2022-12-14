//2022-7-21 llz
//-----testbench of fn_sw------

`timescale 1ns/10ps
module fn_sw_tb;
reg a,b,sel;
wire y;


fn_sw	fn_sw(
		.a(a),
		.b(b),
		.sel(sel),
		.y(y)
		);
initial begin
		a<=0;b<=0;sel<=0;
	#10	a<=0;b<=0;sel<=1;
	#10	a<=0;b<=1;sel<=0;
	#10	a<=0;b<=1;sel<=1;
	#10	a<=1;b<=0;sel<=0;
	#10	a<=1;b<=0;sel<=1;
	#10	a<=1;b<=1;sel<=0;
	#10	a<=1;b<=1;sel<=1;
	#10	$stop;
end

	initial begin
			$dumpfile("test5.vcd");
			$dumpvars(0, fn_sw_tb); 
	end


endmodule
