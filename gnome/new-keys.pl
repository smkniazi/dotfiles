# Mouse
#custom	'mouse-left'	'$HOME/.local/bin/mouse-ctrl -h -s 100'	'<Primary><Alt>h'
#custom	'mouse-right'	'$HOME/.local/bin/mouse-ctrl -l -s 100'	'<Primary><Alt>l'
#custom	'mouse-up'	'$HOME/.local/bin/mouse-ctrl -k -s 100'	'<Primary><Alt>k'
#custom	'mouse-down'	'$HOME/.local/bin/mouse-ctrl -j -s 100'	'<Primary><Alt>j'
#custom	'mouse-left-slow'	'$HOME/.local/bin/mouse-ctrl -h -s 15'	'<Primary><Shift><Alt>h'
#custom	'mouse-right-slow'	'$HOME/.local/bin/mouse-ctrl -l -s 15'	'<Primary><Shift><Alt>l'
#custom	'mouse-up-slow'	'$HOME/.local/bin/mouse-ctrl -k -s 15'	'<Primary><Shift><Alt>k'
#custom	'mouse-down-slow'	'$HOME/.local/bin/mouse-ctrl -j -s 15'	'<Primary><Shift><Alt>j'
#custom	'mouse-click-left'	'$HOME/.local/bin/mouse-ctrl -1'	'<Primary><Alt>1'
#custom	'mouse-click-middle'	'$HOME/.local/bin/mouse-ctrl -2'	'<Primary><Alt>2'
#custom	'mouse-click-right'	'$HOME/.local/bin/mouse-ctrl -3'	'<Primary><Alt>3'
#custom	'mouse-scroll-up'	'$HOME/.local/bin/mouse-ctrl -4'	'<Primary><Alt>4'
#custom	'mouse-scroll-down'	'$HOME/.local/bin/mouse-ctrl -5'	'<Primary><Alt>5'
#custom	'mouse-tap-toggle'	'$HOME/.local/bin/mouse-tap-toggle'	'<Super>m'
#
# MSIC
custom	'wifi-rset'	'$HOME/.local/bin/wifi-reset '	'<Primary><Alt>w'
custom	'type-text'	'$HOME/.local/bin/type-text '	'<Primary><Shift><Alt>p'
custom	'brightness-inc'	'$HOME/.local/bin/brightness up'	'<Super>s'
custom	'brightness-dec'	'$HOME/.local/bin/brightness down'	'<Super><Shift>s'
custom	'sound-up'	'$HOME/.local/bin/volume.sh 10%%+'	'<Super>a'
custom	'sound-down'	'$HOME/.local/bin/volume.sh 10%%-'	'<Super><Shift>a'
custom	'brightness-inc'	'xbacklight -inc 5 '	'[]'
custom	'brightness-dec'	'xbacklight -dec 5 '	'[]'
custom	'transmission'	'$HOME/.local/bin/switch-app -n zathura -f /tmp/zathura-index -c \'$HOME/.local/bin/zathuranoblur\''	'<Super>e'
custom	'transmission'	'$HOME/.local/bin/switch-app -t \'Transmission\' -f /tmp/transmission-index -c \'transmission-gtk\''	'<Super>b'
custom	'mpv'	'$HOME/.local/bin/switch-app -t \'mpv\' -f /tmp/mpv-index -c \'mpv --player-operation-mode=pseudo-gui\''	'<Super>v'
custom	'chrome'	'$HOME/.local/bin/switch-app -t \'google chrome\' -f /tmp/chome-index -c google-chrome'	'<Super>c'
custom	'firefox'	'$HOME/.local/bin/switch-app -t firefox -f /tmp/firefox-index -c firefox'	'<Super>f'
custom	'firefox2'	'$HOME/.local/bin/x11-backend-launch firefox'	'<Primary><Alt>f'
custom	'swith-gnome-termianl'	'$HOME/.local/bin/switch-app -n gnome-terminal -f /tmp/gnome-terminal-index -c \'gnome-terminal --full-screen\''	'<Super>t'
custom	'swith-mlterm'	'$HOME/.local/bin/switch-app -t mlterm -f /tmp/mlterm-index -c \'$HOME/.local/bin/ml\''	'<Super>w'
custom	'gnome-termianl'	'$HOME/.local/bin/x11-backend-launch gnome-terminal'	'<Primary><Alt>t'
custom	'nautilus'	'$HOME/.local/bin/switch-app -n nautilus -f /tmp/nautilus-index -c nautilus'	'<Super>n'
custom	'intellij'	'$HOME/.local/bin/switch-app -t Intellij -f /tmp/intellij-index -c $HOME/.local/bin/start-idea'	'<Super>i'
custom	'lock-screen'	'$HOME/.local/bin/lock-screen'	'<Primary><Super><Alt>l'
custom	'gvim-temp-buffer'	'gvim-temp-buffer'	'<Primary><Alt>e'
custom	'keepassxc'	'$HOME/.local/bin/switch-app -t keepassxc -f /tmp/kpx -c keepassxc'	'<Super>k'
custom	'open-dropbox-folder'	'$HOME/.local/bin/x11-backend-launch nautilus /home/salman/Downloads'	'<Primary><Alt>d'
custom	'open-downloads-folder'	'$HOME/.local/bin/x11-backend-launch nautilus /home/salman/Dropbox'	'<Primary><Shift><Alt>d'
# GNOME
org.gnome.desktop.wm.keybindings	switch-to-workspace-1	['<Super>1']
org.gnome.desktop.wm.keybindings	switch-to-workspace-2	['<Super>2']
org.gnome.desktop.wm.keybindings	switch-to-workspace-3	['<Super>3']
org.gnome.desktop.wm.keybindings	switch-to-workspace-4	['<Super>4']
org.gnome.desktop.wm.keybindings	switch-to-workspace-5	['<Super>5']
org.gnome.desktop.wm.keybindings	switch-to-workspace-6	['<Super>6']
org.gnome.desktop.wm.keybindings	switch-to-workspace-7	['<Super>7']
org.gnome.desktop.wm.keybindings	switch-to-workspace-8	['<Super>8']
org.gnome.desktop.wm.keybindings	switch-to-workspace-9	['<Super>9']
org.gnome.desktop.wm.keybindings	switch-to-workspace-10	['<Super>0']
org.gnome.desktop.wm.keybindings	switch-to-workspace-down	[]
org.gnome.desktop.wm.keybindings	switch-to-workspace-up	[]
org.gnome.desktop.wm.keybindings	switch-to-workspace-left	[]
org.gnome.desktop.wm.keybindings	switch-to-workspace-right	[]
org.gnome.desktop.wm.keybindings	move-to-workspace-1	['<Super><Shift>1']
org.gnome.desktop.wm.keybindings	move-to-workspace-2	['<Super><Shift>2']
org.gnome.desktop.wm.keybindings	move-to-workspace-3	['<Super><Shift>3']
org.gnome.desktop.wm.keybindings	move-to-workspace-4	['<Super><Shift>4']
org.gnome.desktop.wm.keybindings	move-to-workspace-5	['<Super><Shift>5']
org.gnome.desktop.wm.keybindings	move-to-workspace-6	['<Super><Shift>6']
org.gnome.desktop.wm.keybindings	move-to-workspace-7	['<Super><Shift>7']
org.gnome.desktop.wm.keybindings	move-to-workspace-8	['<Super><Shift>8']
org.gnome.desktop.wm.keybindings	move-to-workspace-9	['<Super><Shift>9']
org.gnome.desktop.wm.keybindings	move-to-workspace-10	['<Super><Shift>0']
org.gnome.desktop.wm.keybindings	move-to-workspace-down	[]
org.gnome.desktop.wm.keybindings	move-to-workspace-right	[]
org.gnome.desktop.wm.keybindings	move-to-workspace-up	[]
org.gnome.desktop.wm.keybindings	move-to-workspace-left	[]
org.gnome.desktop.wm.keybindings	move-to-workspace-last	[]
org.gnome.desktop.wm.keybindings	move-to-monitor-left	['<Super><Shift>l']
org.gnome.desktop.wm.keybindings	move-to-monitor-down	[]
org.gnome.desktop.wm.keybindings	move-to-monitor-right	['<Super><Shift>r']
org.gnome.desktop.wm.keybindings	move-to-monitor-up	[]
org.gnome.desktop.wm.keybindings	switch-applications	['<Super>Tab', '<Alt>Tab']
org.gnome.desktop.wm.keybindings	switch-applications-backward	['<Shift><Super>Tab', '<Shift><Alt>Tab']
org.gnome.desktop.wm.keybindings	toggle-fullscreen	['<Super><Shift>f']
org.gnome.desktop.wm.keybindings	toggle-maximized	['<Super><Shift>f']
org.gnome.desktop.wm.keybindings	show-desktop	        ['<Super>d']
org.gnome.desktop.wm.keybindings	cycle-windows-backward	[]
org.gnome.desktop.wm.keybindings	cycle-windows	        ['<Super>g']
org.gnome.desktop.wm.keybindings	minimize	        []
org.gnome.desktop.wm.keybindings	unmaximize	        ['<Super>Down', '<Alt>F5']
org.gnome.desktop.wm.keybindings	maximize	        []
org.gnome.desktop.wm.keybindings	panel-main-menu	[]
org.gnome.mutter.keybindings	toggle-tiled-left	        ['<Super>l']
org.gnome.mutter.keybindings	toggle-tiled-right	        ['<Super>r']
org.gnome.desktop.wm.keybindings	close	['<Alt>F4','<Super>q']
org.gnome.mutter	overlay-key	[]
org.gnome.shell.keybindings	toggle-overview	[]
org.gnome.shell.keybindings	focus-active-notification	[]
org.gnome.shell.keybindings	toggle-message-tray	['<Primary><Alt>m']
org.gnome.shell.keybindings	toggle-application-view	[]
