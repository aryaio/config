#!/bin/bash

# Kill already running Polybar instances
killall -q polybar

# Wait until all processes have been shut down
while pgrep -x polybar >/dev/null; do
    sleep 0.2
done

# Launch bars
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
polybar main 2>&1 | tee -a /tmp/polybar1.log & disown
polybar duplicate 2>&1 | tee -a /tmp/polybar2.log & disown

echo "Bars launched..."

