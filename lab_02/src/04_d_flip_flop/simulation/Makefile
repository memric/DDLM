BUILD_DIR = obj_dir

SOURCES = \
testbench.v \
../d_flip_flop.v \
	
all:
	verilator --binary -j 0 -Wall --trace $(SOURCES)

.PHONY: clean

clean:
	-rm -fR $(BUILD_DIR)
	-rm *.vcd
