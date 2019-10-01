# countdividelooptest
#!/bin/bash
read myLine
sum=0
count=0
for i in $myLine
do
#    echo "i is: $i"
    sum=`expr $sum + $i`
#    echo "sum is: $sum"
    count=`expr $count + 1`
#    echo "count is: $count"
done
mean=`expr $sum / $count`
echo "mean average is $mean"
printf "mean average is "
bc <<< "scale=4;$sum/$count"

# use: cat <datafile> | countdividelooptest.sh
# returns integer only. expr only wirks with integers
