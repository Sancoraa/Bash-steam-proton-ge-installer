#!/usr/bin/env bash

curl -s https://github.com/GloriousEggroll/proton-ge-custom/releases > wscraping.tmp
grep -o "/GE-Proton.*tar.gz" wscraping.tmp > versions.txt
sed -i  '1d;3d;5d;7d;9d;11d;13d;15d;17d;19d' versions.txt
sed -ie 's/^.//' versions.txt
sed -i 's/.tar.gz//' versions.txt

eval $(awk '{print "proton"NR"="$1}' versions.txt)

PS3="Select the Glorious Eggroll's version you wish to install on Steam: "
declare -A options=(
[opt1]="$proton1"
[opt2]="$proton2"
[opt3]="$proton3"
[opt4]="$proton4"
[opt5]="$proton5"
[opt6]="$proton6"
[opt7]="$proton7"
[opt8]="$proton8"
[opt9]="$proton9"
[opt10]="$proton10"
)

select opt in "${options[@]}"
do
        if wget "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/$opt/$opt.tar.gz"
        then
                ./extractmv.sh
        fi
        break
done
