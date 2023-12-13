# 提取一个文件的第二行到第六行，每行是一个二进制数，将其转换成对应的十进制数，然后将其转换成对应的ASCII码，最后将其输出

import sys

file1 = r"D:\Developer\repos\code-in-vsc\Verilog\Computer Organization and Architecture\lab6\SimpleMIPSCPU\reg_modified.bin"

with open(file1, 'r') as f:
    lines = f.readlines()
    for line in lines[2:7]:
        num = int(line, 2)
        print(chr(num%256), end='')
    print("\n-----------------", end='\n')
    for line in lines[10:15]:
        num = int(line, 2)
        print(chr(num%256), end='')