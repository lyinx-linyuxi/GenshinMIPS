# 写一个脚本，将MIPS指令转换成二进制机器码
# 例如：add $t0, $t1, $t2
# 转换成：000000 01001 01010 01000 00000 100000

# 1. 读取文件
# 2. 分割字符串
# 3. 转换成二进制
# 4. 写入文件

import sys

# 指令字典
op_dict = {}

path = r"D:\Developer\repos\code-in-vsc\Verilog\Computer Organization and Architecture\lab6\PipelinedMIPSCPU"

ins_type = {}

r_ins = ["add","sub","and","or","slt"]
for instruction in r_ins:
    ins_type[instruction] = "R"
    op_dict[instruction] = 0

i_ins = ["addi","lw","sw","beq"]
for instruction in i_ins:
    ins_type[instruction] = "I"
op_dict["addi"] = 8
op_dict["lw"] = 35
op_dict["sw"] = 43
op_dict["beq"] = 4

ins_type["j"] = "J"
op_dict["j"] = 2

ins_type["nop"] = "S"
op_dict["nop"] = 0

fuct = {
    "add" : 32,
    "sub" : 34,
    "and" : 36,
    "or" : 37,
    "slt" : 42
}

file1 = path + r"\test.asm"
file2 = path + r"\test.bin"

# 处理R类型指令
def process_r(line):
    # 读取指令
    op = line[0]
    # 读取寄存器
    rd = int(line[1])
    rs = int(line[2])
    rt = int(line[3])


    # 读取函数码
    func = fuct[op]

    # 读取指令码
    op = op_dict[op]

    # 转换成二进制
    op = bin(op)[2:].zfill(6)
    rs = bin(rs)[2:].zfill(5)
    rt = bin(rt)[2:].zfill(5)
    rd = bin(rd)[2:].zfill(5)
    func = bin(func)[2:].zfill(6)

    # 拼接成二进制指令
    bin_code = op + rs + rt + rd + '00000' + func

    return bin_code

# 处理I类型指令
def process_i(line):
    # 读取指令
    op = line[0]
    if op == "addi" or op == "beq":
        # 读取寄存器
        rt = int(line[1])
        rs = int(line[2])
        if op == "beq":
            temp = rt
            rt = rs
            rs = temp
        # 读取偏移量
        offset = int(line[3])
    else:
        # 读取偏移量
        rt = int(line[1])
        offset = int(line[2])
        rs = int(line[3])

    # 读取指令码
    op = op_dict[op]

    # 转换成二进制
    op = bin(op)[2:].zfill(6)
    rs = bin(rs)[2:].zfill(5)
    rt = bin(rt)[2:].zfill(5)
    # offset 符号扩展
    if offset < 0:
        offset = offset & 0xffff
    offset = bin(offset)[2:].zfill(16)

    # 拼接成二进制指令
    bin_code = op + rs + rt + offset

    return bin_code

# 处理J类型指令
def process_j(line):
    # 读取指令
    op = line[0]
    # 读取偏移量
    offset = line[1]

    # 读取偏移量
    offset = int(offset)

    # 读取指令码
    op = op_dict[op]

    # 转换成二进制
    op = bin(op)[2:].zfill(6)
    if offset < 0:
        offset = offset & 0x3ffffff
    offset = bin(offset)[2:].zfill(26)

    # 拼接成二进制指令
    bin_code = op + offset

    return bin_code

# 分割字符串
def split_line(line):
    line = line.replace('\n','')
    line = line.replace(',','')
    line = line.replace('(',' ')
    line = line.replace(')',' ')
    line = line.replace('$','')
    line = line.split(' ')
    return line


if __name__ == "__main__":
    # 读取文件
    file = open(file1, "r", encoding="utf-8")
    # 写入文件
    file_out = open(file2, "w")

    # 读取每一行
    for line in file:
         # 检查是否是注释行
        if line.startswith("#"):
            continue
        # 分割字符串
        line = split_line(line)
        # 读取指令类型
        ins_t = ins_type[line[0]]
        # 处理指令
        if ins_t == "R":
            bin_code = process_r(line)
        elif ins_t == "I":
            bin_code = process_i(line)
        elif ins_t == "J":
            bin_code = process_j(line)
        else:
            bin_code = "00000000000000000000000000000000"
        # 写入文件
        file_out.write(bin_code + '\n')