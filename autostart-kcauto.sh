#!/bin/bash
perl -pi -e 's/exit_type\":\"Crashed/exit_type\":\"none/' ~/.config/google-chrome/Default/Preferences
chromium --disable-session-crashed-bubble --remote-debugging-port=9222  http://www.dmm.com/netgame/social/-/gadgets/=/app_id=854854/ >/dev/null 2>&1  &
sleep 45
cd /home/elias/Documents/kcauto
gnome-terminal --title=kcautostart -- bash -c "./kcloop.sh; exec bash"
xdotool windowminimize $(xdotool search --name kcautostart|head -1)
