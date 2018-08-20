set -e

FILE=${1:-ping.log}
ls "data/$FILE"
DATA="data/$FILE.dat"

gnuplot -p -e "set title 'Ping duration in milliseconds;
lower is better';
set xdata time;
set timefmt '%s';
set format x '%H:%M';
plot '$DATA' using (\$1 + 1*60*60):2 with lines title 'ping';"
