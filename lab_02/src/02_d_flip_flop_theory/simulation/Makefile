BUILD_DIR = obj_dir

SOURCES = \
testbench.v \
../d_flip_flop.v \
../d_latch.v \
../sr_latch.v	
	
all:
	verilator --binary -j 0 -Wall -Wno-UNOPTFLAT -Wno-PINMISSING --trace $(SOURCES)

.PHONY: clean

clean:
	-rm -fR $(BUILD_DIR)
	-rm *.vcd
