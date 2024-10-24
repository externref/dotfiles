#!/usr/bin/fish

polybar-msg cmd quit
# Launch bar1 and bar2
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
polybar 

