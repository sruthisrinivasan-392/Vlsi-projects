//2 input pads
//8 output pads
//Total ports= 10
// VDD=1 & VSS=1
//Total pads=10/4 = 3 each side(left,top,right,bottom)

//INPUTS
PADDI in1(.PAD(clk),.Y(clk));
PADDI in2(.PAD(reset),.Y(reset));


//OUTPUTS
PADDO out1(.A(count[0]),.PAD(count[0]));
PADDO out2(.A(count[1]),.PAD(count[1]));
PADDO out3(.A(count[2]),.PAD(count[2]));
PADDO out4(.A(count[3]),.PAD(count[3]));
PADDO out5(.A(count[4]),.PAD(count[4]));
PADDO out6(.A(count[5]),.PAD(count[5]));
PADDO out7(.A(count[6]),.PAD(count[6]));
PADDO out8(.A(count[7]),.PAD(count[7]));

