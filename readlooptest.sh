# readlooptest
#!/bin/bash
read myLine
sum=0
for i in $myLine
do
    sum=`expr $sum + $i`
done
echo "sum is: $sum"