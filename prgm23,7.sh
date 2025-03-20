
echo "Enter the filename:"
read filename
echo "Enter the word to search (case-insensitive):"
read word
grep -i "$word" "$filename" 
