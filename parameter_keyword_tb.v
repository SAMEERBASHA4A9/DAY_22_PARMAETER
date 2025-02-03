module parameter_keyword_tb(input_data,output_data);



output reg[4:0] input_data;
input [4:0] output_data;


example DUT(.input_data(input_data),.output_data(output_data));

initial
begin
input_data=5'd30;
$monitor("data_in=%0d,data_out=%0d", input_data,output_data,$time);
end

endmodule