#!/bin/sh

iptables -t filter -I FORWARD -m string --string "${filter_keyword}" -j REJECT --algo bm