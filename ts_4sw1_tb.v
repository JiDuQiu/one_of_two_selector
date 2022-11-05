//---testbench of ts_4sw1----
//测试平台
`timescale 1ns/10ps


module fn_sw_4_tb;

reg[3:0] absel;
wire y;

fn_sw_4  fn_sw_4(
		.a(absel[0]),
		.b(absel[1]),
		.sel(absel[3:2]),
		.y(y)
		);
initial begin
		absel<=0;
	#200	$stop;//      运行200时间后停止；
end

always #10 absel<=absel+1;//每10纳秒加1；

initial begin
	$dumpfile("test5-2.vcd");// 指定用作dumpfile的文件
	$dumpvars(0, fn_sw_4_tb); 
end


endmodule
