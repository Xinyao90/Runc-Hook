#!/bin/bash
# postStart script - to indicate if the env config and test phase went okey
# and trigger post-setup actions on the host
# executed in the runtime namespace without chroot
SAVETO="results-scripts/postStart.txt";
#HELLO_PY_PROGRAM="$CDIR/hello.py";
HELLO_C_PROGRAM="$CDIR/hello.c"

#python "$HELLO_PY_PROGRAM" >> "$CDIR/$SAVETO" &
gcc -o "$CDIR/hello" "$HELLO_C_PROGRAM"
"$CDIR/hello" > "$CDIR/$SAVETO" 2>&1

# starts a small python3 server
#python3 $CDIR/httph.py &
# give us some info	
#echo "$0" > $CDIR/$SAVETO;
#for file in /proc/self/ns/*; do
#	readlink $file >> $CDIR/$SAVETO; 
#done
#echo "PID: " $$ >> $CDIR/$SAVETO;
#for i in $(env); do 
	echo $i >> $CDIR/$SAVETO; 
#done
echo "Container has started successfully." >> $CDIR/$SAVETO
