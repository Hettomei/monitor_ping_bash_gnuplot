gnuplot -p -e 'plot "ping.log" with lines'


see https://stackoverflow.com/questions/23803630/gnuplot-plots-incorrect-time-for-time-series-plot
```
gnuplot -p -e "set xdata time; set timefmt '%s'; set format x '%H:%M'; plot 'ping.log' using (\$1 + 1*60*60):2 with lines"
```


# how to

Run

```
./start_ping_log.sh name.log

# wait 5 minutes

./show_graph.sh name.log
```

If no argument given, it write inside data/ping.log
Remember to cp data/ping.log every day
