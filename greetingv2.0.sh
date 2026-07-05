HOUR=$(date +%H)
Greeting=""
RESETC="\e[0m"
current_dir=$(pwd)
TimeOfDay="day"

if [ "$HOUR" -lt 6  ] || [ "$HOUR" -eq 23 ]; then
    Greeting="\033[38;5;55mNIGHT🌙${RESETC}"
    TimeOfDay="night"
elif [ "$HOUR" -lt 12  ]; then
    Greeting="\033[33mMORNING☀️${RESETC}"
elif [ "$HOUR" -lt 18  ]; then
    Greeting="\033[34mAFTERNOON☀️${RESETC}"
elif [ "$HOUR" -lt 23  ]; then
    Greeting="\033[35mEVENING🌅${RESETC}"
    TimeOfDay="evening"
else
    Greeting="\033[31mERROR${RESETC}"
fi




echo "===================================================="
echo "       Welcome back, $USER       "
echo "===================================================="
echo " "
printf "%bGood $Greeting"
echo " "
echo "Today is:          Current time:"
date +"%A %B %d     %H:%M             "
echo " "
echo "Current directory:"
echo "$current_dir"
echo " "
df -h /
echo ""
printf  "Have a \033[38;5;220mwonderful\e[0m  $TimeOfDay!"
echo " "
echo "===================================================="
