module convdim1 #(parameter inlen = 255, parameter kernlen = 3) (
    input  wire[inlen-1:0]             in,
    input  wire[kernlen-1:0]           kernel,
    output wire[inlen+kernlen-2:0]     out);
    
    // 1-dim convolution
    reg[inlen+kernlen-2:0]             conv_res;
    reg[inlen+2*(kernlen-1):0]         augmented_in;
   
    
    always @(*) begin
        conv_res = 0;
        augmented_in = 0;
        augmented_in[kernlen-1+inlen:kernlen-1] = in;
        for (integer i = 0; i < inlen + kernlen - 1; i = i + 1) begin
            for (integer j = 0; j < kernlen; j = j + 1) begin
                conv_res[i] = conv_res[i] + augmented_in[i+j] * kernel[kernlen-1-j];
                // conv_res[i] = conv_res[i] | (augmented_in[i+j] & kernel[kernlen-1-j]);
            end
        end
    end
    
    assign out = conv_res;
    
endmodule
