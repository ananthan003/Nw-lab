echo "Enter the filename to set owner permissions:"
read filename
chmod 700 "$filename"
echo "Owner has full permissions on $filename,others have none."
