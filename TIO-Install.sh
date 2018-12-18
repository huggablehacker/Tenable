#!/bin/bash

if [ -z "$1" ]; then
                echo "Enter Agent Group"
                exit 0
fi

sudo /Library/NessusAgent/run/sbin/nessuscli agent link --key=00abcd00000efgh11111i0k222lmopq3333st4455u66v777777w88xy9999zabc00 --cloud --groups=$1

#used to link a Tenable IO agent to your instance of TIO. Testup to Mac Darwin.
#macke sue to chnage the permissions "chmod a+x"
