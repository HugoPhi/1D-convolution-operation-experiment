module sim ();
    reg [254:0] in;
    reg [2:0] ker;
    wire [256:0] out;
    
    convdim1 dut (.in(in), .kernel(ker), .out(out));
    initial begin
        $dumpfile("/root/CodeHub/verilog/final_term/target/sim.vcd");
        $dumpvars(0, sim);
        
        in = 255'b011010101010110001111;
        ker = 3'b101;
        #10;
        $display("in = %b\nker = %b\nout= %b", in, ker, out);
    end
endmodule
