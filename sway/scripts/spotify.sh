#!/bin/bash
meta=$(playerctl --player=spotify metadata)
artist=$(echo -e "$meta" | grep "xesam:artist" | awk '{for(i=3;i<=NF;++i) printf $i FS}')
title=$(echo -e "$meta" | grep "xesam:title" | awk '{for(i=3;i<=NF;++i) printf $i FS}')
notify-send "$artist - $title"
