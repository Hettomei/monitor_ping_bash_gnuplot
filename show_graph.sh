set -e

FILE=${1:-ping.log}
FILEPATH="data/$FILE"
ls "$FILEPATH"
DATAPATH="data/$FILE.dat"

grep "bytes from" "$FILEPATH" | sed -E 's/\[([0-9]+\.[0-9]+)\].*time=([0-9.]+) ms/\1 \2/' > "$DATAPATH"

gnuplot -p -e "set title 'Ping duration in milliseconds;
lower is better';
set xdata time;
set timefmt '%s';
set format x '%H:%M';
plot '$DATAPATH' using (\$1 + 2*60*60):2 with lines title 'ping';"
