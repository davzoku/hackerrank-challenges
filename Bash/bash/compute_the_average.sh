read N
output=0
# for num in {1..$numbers} is not working since brace-expansion occurs before parameter expansion per feedback on https://unix.stackexchange.com/a/88217
for i in `seq 1 $N`
do
    read value
    ((output+=value))
done

# use `scale` special variable of bc to get 3 dp 
#echo "scale = 3; $output/$N" | bc

printf "%.3f\n" `echo "$output/$N" | bc -l`