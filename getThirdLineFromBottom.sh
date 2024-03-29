# getThirdLineFromBottom.sh
#!/bin/bash
# Write out the datafile
echo abc > sorteddata$$
echo 345 >> sorteddata$$
echo 534 >> sorteddata$$
echo 354 >> sorteddata$$
echo 912 >> sorteddata$$
echo 001 >> sorteddata$$
echo ABC >> sorteddata$$
echo 789 >> sorteddata$$

echo "The lines sorted numerically are:"
cat sorteddata$$ | sort -n

# Get the number of lines in the datafile
numLines=$(wc -l < sorteddata$$)
echo "Third line from the bottom of $numLines is:"

# Sort the lines; get the last 3;
#  get the 1st of the 3
cat sorteddata$$ | sort -n | tail -n 3 | head -n 1

# Remove our datafile
rm -f sorteddata$$
