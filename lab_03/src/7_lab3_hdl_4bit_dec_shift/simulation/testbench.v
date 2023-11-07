`timescale 1 ns / 100 ps
// testbench is a module which only task is to test another module
// testbench is for simulation only, not for synthesis
module testbench;
    // input and output test signals
   	reg  enable;

    reg [3:0] binary;

    wire [15:0] binary_out_shift;
 
   // creating the instance of the module we want to test
	b7_4bit_dec_assign_shift b7_4bit_dec_assign_shift(
		.binary_in(binary),
		.decoder_out(binary_out_shift),
		.enable(enable)
	);
	
	initial 
    begin
        // set inital values of signal
        enable = 1;
        binary = 0;
		
        #1;                                           
           binary=binary+1;
        #1;
           binary=binary+1;
        #1;
           binary=binary+1;
        #1;
           binary=binary+1;
        #1;
           binary=binary+1;
        #1;
           binary=binary+1;
        #1;
           binary=binary+1;
        #1;
           binary=binary+1;
        #1;
           binary=binary+1;
		#1;
           binary=binary+1;
        #1;
           binary=binary+1;
        #1;
           binary=binary+1;
		#1;
           binary=binary+1;
        #1;
           binary=binary+1;
        #1;
           binary=binary+1;
           enable = 0;
	   	   binary = 1;
        #1;
           binary=binary+1;

    end
    // do at the beginning of the simulation
    //  print signal values on every change
    initial 
         $monitor("enable=%b, binary=%b, binary_out_shift=%b",
            enable, binary, binary_out_shift);
    // do at the beginning of the simulation
    initial $dumpfile("out.vcd"); //set output waveform file
    initial 
        $dumpvars;  //iverilog dump init
endmodule
