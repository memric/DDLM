BUILD_DIR = obj_dir

SOURCES = \
testbench.v \
../sr_latch.v	
	
all:
	verilator --binary -j 0 -Wall -Wno-UNOPTFLAT --trace $(SOURCES)

.PHONY: clean

clean:
	-rm -fR $(BUILD_DIR)
	-rm *.vcd
