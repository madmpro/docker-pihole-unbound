#!/bin/bash -e

wget https://www.internic.net/domain/named.root -O /var/lib/unbound/root.hints
unbound-anchor -v

/etc/init.d/unbound start
/s6-init

# Update Gravity
pihole -g
