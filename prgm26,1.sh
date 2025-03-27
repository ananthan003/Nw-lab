if [ $# -ne 1 ]; then
exit 1
fi
USERNAME=$1
OUTPUT_FILE="login_report.txt"
echo "Last login:" > $OUTPUT_FILE
last -n 1 $USERNAME >> $OUTPUT_FILE
echo "\nfailed logins:" >> $OUTPUT_FILE
grep "Failed password" /var/log/auth.log | grep "$USERNAME" >> $OUTPUT_FILE 2>/dev/null
echo "Report saved to $OUTPUT_FILE"
