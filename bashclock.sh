#!/bin/bash





if [ "$#" -eq 2 ]; then 

    arg1=$1
    arg2=$2
    title="Bash Clocker"
    
    case $arg1 in 
        basic) 
            width=122
            height=19
            gnome-terminal --geometry=${width}x${height} --title="${title}" --profile="${arg2}" -- bash -c "bash run_clock.sh ${arg1} Symbols/basic/colon.sh"
            ;;
        basic3d)
            width=140
            height=20
            gnome-terminal --geometry=${width}x${height} --title="${title}" --profile="${arg2}" -- bash -c "bash run_clock.sh ${arg1} Symbols/basic3d/colon3d.sh"
            ;;
        smilingeyes)
            width=140
            height=20
            gnome-terminal --geometry=${width}x${height} --title="${title}" --profile="${arg2}" -- bash -c "bash run_clock.sh ${arg1} Symbols/smilingeyes/colon.sh"
            ;;
        *)
            echo "Error!" 
            echo "Please provide exactly 2 arguments: <arg1> <profile_name>"
            echo "Execute again: ./bashclock.sh arg1 profile_name"
            ;;
    esac
else 
    echo "Incorrect number of arguments"
    echo "Usage: ./bashclock.sh arg1 profile_name"
fi

sleep 2