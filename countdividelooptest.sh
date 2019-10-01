# countdividelooptest
#!/bin/bash
read myLine
sum=0
count=0
for i in $myLine
do
    sum=`expr $sum + $i`
    count=`expr $count + 1`
done
mean=`expr $sum / $count`
echo "mean average is $mean"

# use: cat <datafile> | countdividelooptest.sh
# returns integer only. expr only wirks with integers