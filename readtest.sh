# readtest
#!/bin/bash
echo "Enter in a string, then hit enter:"
read myvar
echo "You entered: $myvar"
echo $myvar > "tempfilename$$"
echo $myvar >> "tempfilename$$"
echo $myvar >> "tempfilename$$"
echo "The temp file contents are:"
cat "tempfilename$$"
echo "The first line of the file is:"
read entireline < "tempfilename$$"
echo "$entireline"
read firstword restofline < "tempfilename$$"
echo "First word of first line: \"$firstword\""
echo "Rest of line: \"$restofline\""
rm -f "tempfilename$$"
