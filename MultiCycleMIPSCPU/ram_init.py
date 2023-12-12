import random

# 设定路径
path = r"D:\Developer\repos\code-in-vsc\Verilog\Computer Organization and Architecture\lab6\MultiCycleMIPSCPU"
data_file = path + r"\test.bin"  # 从这个文件读取前64行
output_file = path + r"\RAM_init.bin"  # 输出文件

# 读取前64行数据
initial_data = []
with open(data_file, "r") as f:
    for _ in range(64):
        line = f.readline().strip()
        # 如果行数不够，则用零填充
        if not line:
            line = '0' * 32
        initial_data.append(line)

# 生成4096行数据，前64行来自initial_data，其余行为零
with open(output_file, "w") as f:
    # 先写入初始64行数据
    for line in initial_data:
        f.write(line + "\n")
    # 写入剩余的4032行零
    for _ in range(4096 - 64):
        f.write('0' * 32 + "\n")

print(output_file.replace("\\", "/"))
