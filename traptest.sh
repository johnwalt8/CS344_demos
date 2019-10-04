# traptest.sh
#!/bin/bash
echo "Creating temporary files..."
TMP="myCoolFilename$$"
trap "rm -f $TMP; echo 'SIGINT received: Deleting temp file then exiting!'; exit 1" INT
echo "FILE CONTENTS." > $TMP
echo "Temp file name is $TMP and contains the contents:"
cat $TMP
while [ 1 -ne 2 ]
do
    echo "Never ending loop - hit CTRL+C to exit!"
    sleep 1
done