#!/usr/bin/env bash

PS3="Select the Glorious Eggroll's version you wish to install on Steam: "
declare -A options=(
[opt1]="GE-Proton7-24"
[opt2]="GE-Proton7-23"
[opt3]="GE-Proton7-22"
[opt4]="GE-Proton7-21"
[opt5]="GE-Proton7-20"
[opt6]="GE-Proton7-19"
[opt7]="GE-Proton7-18"
[opt8]="GE-Proton7-17"
[opt9]="GE-Proton7-16"
[opt10]="GE-Proton7-15"
)

select opt in "${options[@]}"
do
        if wget "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/$opt/$opt.tar.gz"
        then
                ./extractmv.sh
        fi
        break
done