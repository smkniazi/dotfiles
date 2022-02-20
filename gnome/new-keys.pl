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
#custom	'sound-up'	'$HOME/.local/bin/volume.sh inc'	'<Super>a'
#custom	'sound-down'	'$HOME/.local/bin/volume.sh dec'	'<Super><Shift>a'
#
# MSIC
custom	'mouse-tap-toggle'	'$HOME/.local/bin/mouse-tap-toggle'	'<Super><Shift>m'
custom	'wifi-rset'	'$HOME/.local/bin/wifi-reset '	'<Primary><Alt>w'
custom	'type-text'	'$HOME/.local/bin/type-text '	'<Primary><Alt>p'
custom	'brightness-inc'	'$HOME/.local/bin/brightness up'	'<Super>s'
custom	'brightness-dec'	'$HOME/.local/bin/brightness down'	'<Super><Shift>s'
custom	'brightness-inc'	'xbacklight -inc 5 '	'[]'
custom	'brightness-dec'	'xbacklight -dec 5 '	'[]'
custom	'transmission'	'$HOME/.local/bin/run-or-raise.py \'$HOME/.local/bin/zathuranoblur\' Zathura evince okular'	'<Super>z'
custom	'transmission'	'$HOME/.local/bin/run-or-raise.py transmission-gtk Transmission-gtk'	'<Super>b'
custom	'mpv'	'$HOME/.local/bin/run-or-raise.py \'mpv --player-operation-mode=pseudo-gui\' mpv'	'<Super>v'
custom	'firefox'	'$HOME/.local/bin/run-or-raise.py firefox Firefox Google-chrome chromium'	'<Super>f'
custom	'firefox2'	'$HOME/.local/bin/x11-backend-launch firefox'	'<Primary><Alt>f'
custom	'swith-gnome-termianl'	'$HOME/.local/bin/run-or-raise.py kitty urxvt256c urxvt terminal mlterm kitty'	'<Super>t'
custom	'swith-mlterm'	'$HOME/.local/bin/run-or-raise.py $HOME/.local/bin/ml Terminal'	'<Super>w'
custom	'gnome-termianl'	'$HOME/.local/bin/x11-backend-launch kitty'	'<Primary><Alt>t'
custom	'nautilus'	'$HOME/.local/bin/run-or-raise.py nautilus Nautilus '	'<Super>n'
custom	'intellij'	'$HOME/.local/bin/run-or-raise.py $HOME/.local/bin/start-idea jetbrains-idea-ce jetbrains-idea' 	'<Super>i'
custom	'lock-screen'	'$HOME/.local/bin/lock-screen'	'<Primary><Super><Alt>l'
custom	'gvim-temp-buffer'	'gvim-temp-buffer'	'<Primary><Alt>e'
custom	'code'	'$HOME/.local/bin/run-or-raise.py code code'	'<Super>c'
custom	'keepassxc'	'$HOME/.local/bin/run-or-raise.py keepassxc keepassxc'	'<Super><Shift>c'
custom	'open-dropbox-folder'	'$HOME/.local/bin/x11-backend-launch nautilus /home/salman/Downloads'	'<Primary><Alt>d'
custom	'open-downloads-folder'	'$HOME/.local/bin/x11-backend-launch nautilus /home/salman/Dropbox'	'<Primary><Shift><Alt>d'
custom	'movet-win-to-left'	'$HOME/.local/bin/resize-window -d l'	'<Primary><Super>h'
custom	'movet-win-to-right'	'$HOME/.local/bin/resize-window -d r'	'<Primary><Super>l'
custom	'fullscreen'	'$HOME/.local/bin/resize-window -f'	'<Primary><Super>f'
custom	'fullscreen2'	'$HOME/.local/bin/resize-window -f'	'<Super><Shift>f'
custom	'center'	'$HOME/.local/bin/resize-window -c'	'<Primary><Super>m'
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
org.gnome.desktop.wm.keybindings	move-to-monitor-left	[]
org.gnome.desktop.wm.keybindings	move-to-monitor-down	[]
org.gnome.desktop.wm.keybindings	move-to-monitor-right	[]
org.gnome.desktop.wm.keybindings	move-to-monitor-up	[]
org.gnome.desktop.wm.keybindings	switch-applications	['<Super>Tab', '<Alt>Tab']
org.gnome.desktop.wm.keybindings	switch-applications-backward	['<Shift><Super>Tab', '<Shift><Alt>Tab']
org.gnome.desktop.wm.keybindings	toggle-fullscreen	[]
org.gnome.desktop.wm.keybindings	toggle-maximized	[]
org.gnome.desktop.wm.keybindings	show-desktop	        ['<Super>d']
org.gnome.desktop.wm.keybindings	cycle-windows-backward	['<Super><Shift>g']
org.gnome.desktop.wm.keybindings	cycle-windows	        ['<Super>g']
org.gnome.desktop.wm.keybindings	minimize	        ['<Super>m']
org.gnome.desktop.wm.keybindings	unmaximize	        ['<Super>Down', '<Alt>F5']
org.gnome.desktop.wm.keybindings	maximize	        []
org.gnome.desktop.wm.keybindings	panel-main-menu	[]
org.gnome.mutter.keybindings	toggle-tiled-left	        []
org.gnome.mutter.keybindings	toggle-tiled-right	        []
org.gnome.desktop.wm.keybindings	close	['<Alt>F4','<Super>q']
org.gnome.mutter	overlay-key	[]
org.gnome.shell.keybindings	toggle-overview	[]
org.gnome.shell.keybindings	focus-active-notification	[]
org.gnome.shell.keybindings	toggle-message-tray	['<Primary><Alt>m']
org.gnome.shell.keybindings	toggle-application-view	[]
org.gnome.settings-daemon.plugins.media-keys	volume-down	        ['<Shift><Super>a']
org.gnome.settings-daemon.plugins.media-keys	volume-up	          ['<Super>a']
org.gnome.mutter.keybindings	toggle-tiled-right	['<Super>Right']
org.gnome.mutter.keybindings	toggle-tiled-left	['<Super>Left']
org.gnome.desktop.wm.keybindings	maximize-horizontally	['<Primary><Super>j', '<Super>Down']
org.gnome.desktop.wm.keybindings	maximize-vertically	['<Primary><Super>k', '<Super>Up']
org.gnome.settings-daemon.plugins.media-keys	screensaver	[]
