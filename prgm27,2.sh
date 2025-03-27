echo -n "Enter process name to count:"
read process
count=$(ps aux | grep -w "$process" | grep -v "grep" | wc -l)
echo "number of running instance of $process":"$count"
