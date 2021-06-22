#!/usr/bin/env bash

nodeos \
	--data-dir /wax/data		\
	--config-dir /wax		\
	--snapshot /wax/snapshots/snapshot.bin \
	>> nodeos.log 2>&1 &    
