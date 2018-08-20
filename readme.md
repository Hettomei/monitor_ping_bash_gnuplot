gnuplot -p -e 'plot "ping.log" with lines'


see https://stackoverflow.com/questions/23803630/gnuplot-plots-incorrect-time-for-time-series-plot
```
gnuplot -p -e "set xdata time; set timefmt '%s'; set format x '%H:%M'; plot 'ping.log' using (\$1 + 1*60*60):2 with lines"
```


# how to

Run

```
./start_ping_log.sh
```

It write inside ping.log

Remember to cp ping.log every day
