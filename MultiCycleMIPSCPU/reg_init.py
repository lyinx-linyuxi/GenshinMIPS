# 生成初始化寄存器的数据文件

import random

path = r"D:\Developer\repos\code-in-vsc\Verilog\Computer Organization and Architecture\lab6\MultiCycleMIPSCPU"


file = path + r"\reg.bin"

print (file.replace("\\", "/"))

print(file.replace("\\", "/"))

with open(file, "w") as f:
    num = 0
    for i in range(32):
        bin_reg = bin(num)[2:].zfill(32)
        if num == 0:
            num = 1
        else:
            num = num << 1
        f.write(bin_reg + "\n")

