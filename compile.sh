#!/bin/bash

prj="/root/CodeHub/verilog/final_term"
input_file="VMakeList.txt"
output_file="top.vvp"

sed "s|\$prj|${prj}|g" ${prj}/${input_file} > ${prj}/temp_file_list.txt
iverilog -c ${prj}/temp_file_list.txt -o ${prj}/target/${output_file}

rm ${prj}/temp_file_list.txt

# iverilog -o ${item_path}/target/top.vvp -c ${item_path}/VMakeList.txt


