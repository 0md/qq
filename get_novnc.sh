#!/bin/bash

if ! test -d noVNC; then
    git clone --depth 1 https://github.com/novnc/noVNC
    rm -rf noVNC/.git
else
    echo "noVNC already here"
fi

if ! test -d noVNC/utils/websockify; then
    git clone --depth 1 https://github.com/novnc/websockify
    rm -rf websockify/.git
    mv websockify noVNC/utils
else
    echo "websockify already here"
fi

test -e noVNC/index.html || cp noVNC/vnc.html noVNC/index.html
sed -i -- "s/ps -p/ps -o pid | grep/g" noVNC/utils/launch.sh

