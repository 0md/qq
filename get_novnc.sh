#!/bin/bash

if ! test -d noVNC; then
	git clone --depth 1 https://github.com/novnc/noVNC
    rm -rf .noVNC/.git
fi

if ! test -d websockify; then
	git clone --depth 1 https://github.com/novnc/websockify
    rm -rf .websockify/.git
fi

mv websockify noVNC/utils
cp noVNC/vnc.html noVNC/index.html
sed -i -- "s/ps -p/ps -o pid | grep/g" noVNC/utils/launch.sh

