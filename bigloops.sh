# bigloops.sh
#!/bin/bash
lineNum=0

while read myLine
do
	sum=0
	count=0
	average=0
	lineNum=`expr $lineNum + 1
