#!/usr/bin/python3
import subprocess
import sys
import hashlib
import os.path
import subprocess, os

raise_command=""
focused_window_id_file=""
focused_window_id=0
window_classes=[]
logs_dir="/tmp/switcher/"
curr_desktop=""

def logger(msg):
    filex = open(logs_dir+"log", 'a+')
    filex.write(msg)
    filex.write("\n")
    filex.close()
    print(msg)

def get_matches():
    all_wnd_ids = get_matching_class_winids()
    logger("all window ids matching the class \""+ ", ".join(window_classes)  +"\": "+ ", ".join(all_wnd_ids))
    visible_wnd_ids = get_visible_winids()
    logger("all visible windows: "+ ", ".join(visible_wnd_ids))

    matches = []
    for vwndid in visible_wnd_ids:
      if  vwndid in  all_wnd_ids:
          matches.append(vwndid)
    matches.sort()
    logger("Windows matched: "+", ".join(matches))

    return matches

def run_bash_command(cmd):
    my_env = os.environ.copy()
    my_env["GDK_BACKEND"] = "x11" 
    process = subprocess.Popen(cmd, stdout=subprocess.PIPE, env=my_env)
    out = process.communicate()[0].decode()
    process.stdout.close()
    return out

def get_desktop():
    output = []
    cmd = ["xdotool", "get_desktop"]
    output = output + run_bash_command(cmd).split('\n')
    if len(output) > 0:
        return output[0]
    else:
        return "0"

def get_curr_focus_id():
    output = []
    cmd = ["xdotool", "getactivewindow", "getwindowfocus"]
    output = output + run_bash_command(cmd).split('\n')
    for x in range(0, output.count('')):
        output.remove('')
    logger("Current focus window id is: "+", ".join(output))
    if len(output) > 0:
        return output[0]
    else:
        return "0"

def get_matching_class_winids():
    ret = []

    cmd = ["wmctrl", "-p",  "-l", "-x"]
    outpulines = run_bash_command(cmd).splitlines()
    for line in outpulines :
        tokens = line.split()
        wndclass=tokens[3]

        for wc in window_classes:
            if wc.lower() in str(wndclass).lower() :
                ret = ret + [str(int(tokens[0], base=16))]
    return ret 

def get_visible_winids():
    winids_temp = []
    winids = []
    cmd = ["wmctrl", "-l"]
    winids_temp = run_bash_command(cmd).split('\n')

    # extract window id and convert it into int
    for x in range(0, winids_temp.count('')):
        winids_temp.remove('')
    for winid in winids_temp:
        winid = winid.split(' ', 1)[0]
        winid = str(int(winid, 16))
        winids.append(winid)
    return winids


def get_focused_window_id_from_disk():
    #logger("File: "+focused_window_id_file)
    id = "0" 
    if os.path.isfile(focused_window_id_file):
        file = open(focused_window_id_file)
        id = file.read()
    else:
        file = open(focused_window_id_file, "w")
        file.write("0")
    logger("Previously focused window id: "+id)
    return id

def set_focused_window_id_to_disk(id):
    filex = open(focused_window_id_file, "w")
    filex.write(id)
    filex.close()

def focus_window(id):
    cmd = ["wmctrl", "-i", "-a", id]
    logger("Focusing window id: "+str(id))
    run_bash_command(cmd)

def main():
    global window_classes
    global focused_window_id_file
    global focused_window_id
    global raise_command
    global curr_desktop
    #raise_command = "GDK_BACKEND=x11 "+sys.argv[1]+" &"
    raise_command = sys.argv[1]
    window_classes = sys.argv[2:]
    current_focused_wnd_id = ''

    if not os.path.isdir(logs_dir):
          os.mkdir(logs_dir)

    curr_desktop = get_desktop()
    #logger("Current desktop is: "+", ".join(output))

    focused_window_id_file =  int(hashlib.sha256((raise_command+curr_desktop).encode('utf-8')).hexdigest(), 16) % 10**8
    focused_window_id_file = logs_dir+str(focused_window_id_file)
    focused_window_id = get_focused_window_id_from_disk()

    current_focused_wnd_id = get_curr_focus_id()

    matches = get_matches()

#    sys.exit(0)
    if len(matches) == 0:
      logger("raising "+raise_command)
      run_bash_command(raise_command)
      sys.exit(0)


    if focused_window_id == "0" or focused_window_id not in matches:
       focused_window_id = matches[0]
       set_focused_window_id_to_disk(focused_window_id)

    if focused_window_id != current_focused_wnd_id:
        focus_window(focused_window_id)
    else:
        index = matches.index(focused_window_id) + 1
        if index >= len(matches):
            index = 0
        new_focus_id=matches[index] 
        set_focused_window_id_to_disk(new_focus_id)
        focus_window(new_focus_id)


if __name__ == '__main__':
    if len(sys.argv) < 3:
        logger("Wring number of arguments. Usage {command to launch app} {window class} {window class}...")
        sys.exit(1)
    main()
