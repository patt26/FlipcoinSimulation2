#!/bin/bash -x

H=0
T=0

declare -A coinflip

for (( i=1; i<=10; i++ ))
do	
  
			flip=$((RANDOM%2))
	if [ $flip -eq 1 ]

				 then coinflip[Heads]=$((++H))

			else coinflip[Tails]=$((++T))
	fi
done

headsperc=$(( $(( $H*10)) ))
tailsperc=$(( $(( $T*10)) ))

echo "Count of Heads is = $H & Percentage is = $headsperc"
echo "Count of Tails is = $T & Percentage is = $tailsperc"
