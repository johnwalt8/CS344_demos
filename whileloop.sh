# whileloop
#!/bin/bash
i=0
while [ $i -ne 2 ]
do
	printf "i = $i, not stopping yet\n"
	i=$(expr $i + 1)
done
printf "Stopping, i = $i\n"
