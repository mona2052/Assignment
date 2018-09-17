#!/bin/bash
find /Users/mona/practise -type f -exec grep -l "SEVERE:" {} \; > test.txt
for i in *.log; do 
    sed -n '/Apr 27, 2015/,/Apr 30, 2015/p' $i >> newfile.txt
done
grep 'SEVERE:' newfile.txt >> test.txt
grep 'SEVERE:' test.txt | wc -l >> test.txt
rm -rf newfile.txt
