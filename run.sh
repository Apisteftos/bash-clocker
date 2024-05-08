#!/bin/bash





if [ "$#" -eq 2 ]; then 

    arg1=$1
    arg2=$2
    
    case $arg1 in 
        basic) 
            width=122
            height=19
            gnome-terminal --geometry=${width}x${height} --profile="${arg2}" -- bash -c "bash bash_clock.sh ${arg1} Symbols/basic/colon.sh"
            ;;
        basic3d)
            width=140
            height=20
            gnome-terminal --geometry=${width}x${height} --profile="${arg2}" -- bash -c "bash bash_clock.sh ${arg1} Symbols/basic3d/colon3d.sh"
            ;;
        *)
            echo "Error!" 
            echo "Please provide exactly 2 arguments: <arg1> <profile_name>"
            echo "Execute again: ./run.sh arg1 profile_name"
            ;;
    esac
else 
    echo "Incorrect number of arguments"
    echo "Usage: ./run.sh arg1 profile_name"
fi

sleep 2