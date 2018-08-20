set -e

FILE=${1:-ping.log}

ping -D -i 5 192.168.46.254 2>&1 | tee -a "data/$FILE"
