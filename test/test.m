sp = serialport("COM7",115200);

for ph=0:0.02:100*pi
    line = sprintf("%e\t%e\t%e",sin(ph),10*sin(ph+2*pi/3),100*sin(ph+4*pi/3));
    sp.writeline(line)
    pause(0.01)
end
delete(sp)