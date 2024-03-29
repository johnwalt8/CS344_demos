# bigloops.sh
#!/bin/bash
lineNum=0

while read myLine
do
	sum=0
	count=0
	average=0
	lineNum=`expr $lineNum + 1`
	echo "processing line $lineNum: $myLine"

	for i in $myLine
	do
		num=$i
		count=`expr $count + 1`
		echo "  Item $count: $num"
		sum=`expr $sum + $num`
	done

	average=`expr $sum / $count`

	echo "  Line count: $count"
	echo "  Line sum: $sum"
	echo "  Line average: $average"
done < $1