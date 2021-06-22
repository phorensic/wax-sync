#!/usr/bin/env bash

rm /wax/snapshots/*.*
rm -rf /wax/data/*.*
curl -o /wax/snapshots/snapshot.bin.tar.gz https://snapshots.waxsweden.org/snapshots/57abfa/2.0/snapshot-125583653.bin.tar.gz
tar -zxf /wax/snapshots/snapshot.bin.tar.gz -C /wax/snapshots/
rm /wax/snapshots/*.tar.gz
mv /wax/snapshots/*.bin /wax/snapshots/snapshot.bin
./nodeos.sh
