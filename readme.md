# Install

```
apt get install gnuplot
```

# How to

```
./start_ping_log.sh name.log

# wait 5 minutes

./show_graph.sh name.log
```

If no argument given, it write inside data/ping.log
Remember to cp data/ping.log every day or ping will stack

# FAQ

## How to ping another adress ?

Currently not possible without chaning source code.

change `start_ping_log.sh`

PR are welcome.

## How did you translate timestamp in gnuplot ?

see https://stackoverflow.com/questions/23803630/gnuplot-plots-incorrect-time-for-time-series-plot
