# 生成初始化寄存器的数据文件

import random
import sys


def check_variable_defined(variable_name, custom_warning):
    try:
        # 尝试访问变量，如果未定义会抛出 NameError 异常
        variable_value = globals()[variable_name]
    except KeyError:
        print(custom_warning)
        sys.exit()
    else:
        print(f"变量 {variable_name} 已定义，其值为: {variable_value}")


# 修改project path为你的项目路径
# path = r"project path\GenshinMIPS\SimpleMIPSCPU\V_0.0.0\scripts"
check_variable_defined('path', '修改project path为你的项目路径')

path = r"D:\Developer\repos\code-in-vsc\Verilog\Computer Organization and Architecture\lab6\MultiCycleMIPSCPU"


file = path + r"\test.bin"

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
