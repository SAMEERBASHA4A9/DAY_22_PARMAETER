module parameter_keyword(data_in, data_out);

parameter n = 3;
parameter m = 3;

input [n-1:0] data_in;
output  reg [m-1:0] data_out;

always@(*)
begin
data_out = data_in;  // Added logic inside the module
end

endmodule


module example(input_data, output_data);

parameter p = 5;
parameter q = 5;

input [p-1:0] input_data;
output [q-1:0] output_data;

// Instantiating parameter_keyword with parameter overriding
parameter_keyword #(.n(5), .m(5)) DUT (.data_in(input_data), .data_out(output_data));

endmodule

