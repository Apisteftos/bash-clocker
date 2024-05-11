#!/bin/bash



cleanup() {

    tput cnorm
    exit
}


trap cleanup INT


echo "Time Sychronization..."

files=(zero one two three four five six seven eight nine)


arg1=$1
arg2=$2

while true; do
    


    hour=$(date +%H)
    minute=$(date +%M)
    second=$(date +%S)

    hour_first_digit=""
    hour_second_digit=""
    minute_first_digit=""
    minute_second_digit=""
    second_first_digit=""
    second_second_digit=""


    for (( i = 0; i < ${#files[@]}; i++)); do


        if [[ "${hour:0:1}" == "$i" ]]; then 
        hour_first_digit=$(<Numbers/${arg1}/${files[$i]}.sh)
        fi


        if [[ "${hour:1:1}" == "$i" ]]; then 
        hour_second_digit=$(<Numbers/${arg1}/${files[$i]}.sh)
        fi


        if [[ "${minute:0:1}" == "$i" ]]; then 
        minute_first_digit=$(<Numbers/${arg1}/${files[$i]}.sh)
        fi 

        if [[ "${minute:1:1}" == "$i" ]]; then 
        minute_second_digit=$(<Numbers/${arg1}/${files[$i]}.sh)
        fi

        if [[ "${second:0:1}" == "$i" ]]; then 
        second_first_digit=$(<Numbers/${arg1}/${files[$i]}.sh)
        fi


        if [[ "${second:1:1}" == "$i" ]]; then 
        second_second_digit=$(<Numbers/${arg1}/${files[$i]}.sh)
        fi


    done



    tput civis



    echo "Current Time: $hour:$minute:$second"
    echo "ASCII Art Representation:"
    if [ $arg2 == "Symbols/basic/colon.sh" ]; then 
        result=$(paste -d '' <(echo "$hour_first_digit") \
                            <(echo "$hour_second_digit") \
                            Symbols/basic/colon.sh \
                            <(echo "$minute_first_digit") \
                            <(echo "$minute_second_digit") \
                            Symbols/basic/colon.sh \
                            <(echo "$second_first_digit") \
                            <(echo "$second_second_digit"))
    elif [ $arg2 == "Symbols/basic3d/colon3d.sh" ]; then
        result=$(paste -d '' <(echo "$hour_first_digit") \
                            <(echo "$hour_second_digit") \
                            Symbols/basic3d/colon3d.sh \
                            <(echo "$minute_first_digit") \
                            <(echo "$minute_second_digit") \
                            Symbols/basic3d/colon3d.sh \
                            <(echo "$second_first_digit") \
                            <(echo "$second_second_digit"))
    elif [ $arg2 == "Symbols/smilingeyes/colon.sh" ]; then 
        result=$(paste -d '' <(echo "$hour_first_digit") \
                        <(echo "$hour_second_digit") \
                        Symbols/smilingeyes/colon.sh \
                        <(echo "$minute_first_digit") \
                        <(echo "$minute_second_digit") \
                        Symbols/smilingeyes/colon.sh \
                        <(echo "$second_first_digit") \
                        <(echo "$second_second_digit"))
    elif [ $arg2 == "Symbols/bluredvision/colon.sh" ]; then 
        result=$(paste -d '' <(echo "$hour_first_digit") \
                        <(echo "$hour_second_digit") \
                        Symbols/bluredvision/colon.sh \
                        <(echo "$minute_first_digit") \
                        <(echo "$minute_second_digit") \
                        Symbols/bluredvision/colon.sh \
                        <(echo "$second_first_digit") \
                        <(echo "$second_second_digit") \
                        Symbols/bluredvision/dots.sh)
    fi
    echo "$result"


    sleep 1s


done