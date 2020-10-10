#!/bin/bash
cat ./index.html| grep -oE '/courses/electrical-engineering-and-computer-science/6-172-performance-engineering-of-software-systems-fall-2018/lecture-slides/MIT6_172F18_lec[0-9]+\.pdf' | awk 'BEGIN{i=1;}{printf "wget https://ocw.mit.edu%s -O %d.pdf\n", $1,i; i++;}' | xargs -t -I cmd sh -c 'cmd'
