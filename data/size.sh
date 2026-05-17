#! /bin/bash

sel="* */* */*/* */*/*/*"
wc $sel 2>/dev/null | head -n -1 > files.txt

echo "Number of files: $(wc -l files.txt 2>/dev/null | tail -n 1 | awk '{print $1}')"
echo "Number of lines: $(wc -l $sel      2>/dev/null | tail -n 1 | awk '{print $1}')"
echo "Number of words: $(wc -w $sel      2>/dev/null | tail -n 1 | awk '{print $1}')"
echo "Number of chars: $(wc -m $sel      2>/dev/null | tail -n 1 | awk '{print $1}')"
