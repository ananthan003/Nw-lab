echo -n "Enter process name or pid(eg:firefox,chrome or 1234)"
read process
if [ -z "$process" ]; then
echo "No input provided.exiting"
exit 1
fi 
ps aux| grep -w "$process" | grep -v "grep" || echo "no such proccess found:$process"

