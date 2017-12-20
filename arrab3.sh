token="462395003:AAGN352LYtFBsI6pEGwpyssvRmB61Spct2I"
if [ ! -f ./tg/tgcli ]; then
    echo "tg not found"
    echo "Run $0 install"
    exit 1
fi
if [ $token == "" ]; then
    echo "token not found"
    echo "Run install again"
    exit 1
fi
 
COUNTER=1
while(true) do

curl "https://api.telegram.org/bot"$token"/sendmessage" -F
./tg/tgcli -s ./bot/bot.lua $@ --bot=$token

let COUNTER=COUNTER+1 
done


