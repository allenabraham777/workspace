import sys
import os

data = sys.argv[1]
dest = int(data)

if dest < 1 or dest > 10:
    raise ValueError("Invalid parameter")
focused_output = os.popen("hyprctl monitors | grep 'focused'").read()
values = focused_output.split('\n')

active = -1
values.pop()
for i in range(len(values)):
    focused = values[i].split()[-1]
    if focused == 'yes':
        active = i
        break;
workspace = active * 10 + dest
command = f'hyprctl dispatch workspace {workspace}'
os.system(command)
