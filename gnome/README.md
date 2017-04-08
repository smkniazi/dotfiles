This thread explains how I change the key bindings for gnome
http://askubuntu.com/questions/26056/where-are-gnome-keyboard-shortcuts-stored

Currently there is lot of manual work
1) ./gnome-key-importer -e backup
2) new-keys contain new key bindings
3) make sure that the key that you using are unbounded. To do that open the keyboard application and try to assign these keys and the system will complain that the keys are already bounded. Remove the existing key binding. 
4) ./gnome-key-importer -i new-keys 

