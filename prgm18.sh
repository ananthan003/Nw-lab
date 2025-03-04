echo "Enter the filename:"
read filename
if [ -e "$filename" ]; then
echo "file exists"
if [ -r "$filename" ]; then
echo "file is readable"
else
echo "file is not readable"
fi
if [ -w "$filename" ]; then
echo "file is writable"
else
echo "file is not writable"
fi
if [ -r "$filename" ] && [ -w "$filename" ]; then
echo "file is both readable and writable"
else
echo "file is not both readable and writable"
fi
else
echo "file dont exists"
fi
