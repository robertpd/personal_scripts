#!/bin/bash

ACCUMULATOR=()

YEAR=2019
echo $YEAR
for filename in *$YEAR*.csv; do
	ACCUMULATOR+=(`cut -d ',' -f5 $filename  | sort -r | head -n 1`)
done

IFS=$'\n' sorted=($(sort -r <<<"${ACCUMULATOR[*]}"))
unset IFS

echo $sorted



