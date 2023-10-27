sp = serialport("COM3",115200);
sp.writeline("#file hogehoge")
sp.writeline(sprintf('t\tphi\tth\tdphi\tth'))
for ph=0:0.02:100*pi*0.001
    line = sprintf("%e\t%e\t%e\t%e\t%e",ph,sin(ph),ph*10*sin(ph+2*pi/3),100*sin(ph+4*pi/3),100*sin(ph*1.2+4*pi));
    sp.writeline(line)
    pause(0.01)
end
delete(sp)