# bashfunctraploop.sh
#!/bin/bash
trap "echo 'SIGINT Received, running loop'; loopfunc; exit 0" SIGINT

loopfunc ()
{
	for i in 1 2 3
	do
		echo $i
	done
}

echo "Kill this script with CTRL+C"
while [ 1 -eq 1 ]
do
	echo "nothing" > /dev/null
done
