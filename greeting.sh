HOUR=$(date +%H)
Greeting=""
TimeOfDay="day"
RESETC="\e[0m"

if [ "$HOUR" -lt 6  ] || [ "$HOUR" -eq 23 ]; then
    Greeting="\033[38;5;55mNIGHT${RESETC}"
    TimeOfDay="night"
elif [ "$HOUR" -lt 12  ]; then
    Greeting="\033[33mMORNING${RESETC}"
elif [ "$HOUR" -lt 18  ]; then
    Greeting="\033[34mAFTERNOON${RESETC}"
elif [ "$HOUR" -lt 23  ]; then
    Greeting="\033[35mEVENING${RESETC}"
else
    Greeting="\033[31mERROR${RESETC}"
fi

printf  "%bGood $Greeting, $USER!\n"
printf  "%bHave a \033[38;5;220mwonderful\e[0m $TimeOfDay!"
