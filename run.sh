#!/bin/bash

item_path=/root/CodeHub/verilog/final_term

vvp ${item_path}/target/*.vvp

gtkwave ${item_path}/target/*.vcd
