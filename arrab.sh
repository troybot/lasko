token="538369986:AAH-p27VJnO8t3Me5Prr0gHhQIgiDn4f2OA"
if [ ! -f ./libs/tg ]; then
    echo "tg not found"
    echo "Run install.sh"
    exit 1
fi
if [ $token == "" ]; then
    echo "token not found"
    echo "Run install.sh again"
    exit 1
fi
 
COUNTER=1
while(true) do

curl "https://api.telegram.org/bot"$token"/sendmessage" -F
./libs/tg -s ./bot/TH3BOSS.lua $@ --bot=$token

let COUNTER=COUNTER+1 
done


