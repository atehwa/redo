find ../.. | tee $3 | redo-stamp
A=`find ../.. | wc`
B=`cat $3 | wc`
if [ "$A" != "$B" ]; then
    exit 1
fi
