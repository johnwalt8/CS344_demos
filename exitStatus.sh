# exitStatus.sh
#!/bin/bash
echo "About to do an 'ls > /dev/null'"
ls > /dev/null
printf "Result of ls was: $?\n"
echo "About to exit with status 5, use 'echo \$?' to see it"
exit 5
