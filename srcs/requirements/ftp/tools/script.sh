#!/bin/bash

useradd casper
# echo "755608\n755608" | passwd casper
# usermod -aG www-data casper
exec $@
