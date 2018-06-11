#! /bin/sh

# awk-print.sh

echo ---sales---
awk '{ print $1 }' sales

echo ---sales---
awk '{ print $2, $3 }' sales

echo ---quotas---
awk '{ print $1, $NF, NF }' quotas

echo ---quotas---
awk 'NF > 2 { print $0 }' quotas

echo ---sales---
awk 'NF > 2' sales

