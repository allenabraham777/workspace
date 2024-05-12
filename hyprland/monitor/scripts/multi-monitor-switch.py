import sys
import os

data = sys.argv[1]
dest = int(data) - 1

focused_output = os.popen("hyprctl monitors | grep 'focused'").read()
values = focused_output.split('\n')

if dest < 0 or dest >= len(values):
    raise ValueError("Invalid parameter")

workspace = dest * 10 + 1
command = f'hyprctl dispatch workspace {workspace}'
os.system(command)
