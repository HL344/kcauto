#!/bin/bash
j=$#;
if [ $j -gt 0 ]
then
	i=$1
else
	i='config.json'
fi	
echo $i
while true 
do
	python3.7 kcauto --cli --cfg-path /home/elias/Documents/kcauto/configs/$i
	wait 1
done 
