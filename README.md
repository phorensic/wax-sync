# wax-sync
Sync your WAX node in minutes!

```$ ./snap.sh```

This script pulls a snapshot from waxsweden, decompresses it, renames it, and then runs the main nodes.sh script.
The name of the snapshot must be manually edited to the latest one for now, until I can auto-parse from the website.

```$ ./nodeos.sh```

This runs the main node process with the snapshot added as an argument. You must delete the snapshot argument for subsequent runs. Note: simply commenting out that line does not work. Must be run as root in order to create the http server. "snap.sh" calls this script automatically, so you must be root when running "snap.sh". I suggest ```$ sudo -s```

```config.ini```

The ultimate p2p syncing config. This has been tuned to the Nth degree for my server. Use it as a good starting point for your server.
The main features are that it multi-threads everything possible, eliminates junk p2p nodes, and uses the smallest amount of RAM possible.
The RAM requirements will grow as the wax chain grows.
