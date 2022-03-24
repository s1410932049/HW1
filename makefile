VERILOG = iverilog
TARGET = hw1.vcd
TEMP = hw1.vpp
$(TARGET) : hw1.vvp
	vvp hw1.vvp
hw1.vvp: hw1_th.v hw1.v
	$(VERILOG) -o hw1.vvp hw1_th.v hw1.v
clean:
	-del $(TARGET)
	-del $(TEMP)
