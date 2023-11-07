BUILD_DIR = obj_dir

SOURCES = \
testbench.v \
../lab3.v \
	
all:
	verilator --binary -j 0 -Wall -Wno-DECLFILENAME -Wno-UNUSEDSIGNAL --trace --top testbench $(SOURCES)

.PHONY: clean

clean:
	-rm -fR $(BUILD_DIR)
	-rm *.vcd
