#!/bin/bash

ACCUMULATOR=()

YEAR=2015
echo $YEAR
for filename in *$YEAR*.csv; do
	ACCUMULATOR+=(`cut -d ',' -f5 $filename  | sort --reverse --numeric-sort | head -n 1`)
done

IFS=$'\n' sorted=($(sort --reverse --numeric-sort <<<"${ACCUMULATOR[*]}"))
unset IFS

echo $sorted



