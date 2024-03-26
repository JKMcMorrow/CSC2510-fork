#! /bin/bash

echo "1."
find /bin -name 'c*'
echo
echo "2."
find /bin -name '*sh*' -type l
echo
echo "3."
find /usr | head -10
echo
echo "4."
grep "model name" /proc/cpuinfo
echo
echo "5."
grep -vc "send" /etc/services
echo
echo "6."
grep -n "send" /etc/services

export LC_ALL=C

echo
echo "7."
sort food.txt
echo
echo "8."
sort -r food.txt
echo
echo "9."
sort --key=2 food.txt
echo
echo "10."
sort -k4,4nr -k3,3nr food.txt > calo.txt
cat calo.txt

