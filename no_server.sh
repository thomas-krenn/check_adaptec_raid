#!/bin/bash

cd /home/fnemeth/git/check_adaptec_raid
rm check_adaptec_raid_cat
cp check_adaptec_raid check_adaptec_raid_cat
patch check_adaptec_raid_cat < no_server.patch
