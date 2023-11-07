BUILD_DIR = obj_dir

SOURCES = \
testbench.v \
../lab1.v	
	
all:
	verilator --binary -j 0 -Wall --trace $(SOURCES)

.PHONY: clean

clean:
	-rm -fR $(BUILD_DIR)
	-rm *.vcd
