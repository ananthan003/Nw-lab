echo "Enter the filename:"
read filename
 
if [ ! -e "$filename" ]; then
echo "file does not exists"
exit 1
fi

echo "file exists. choose an operation:"
echo "1. copy"
echo "2. edit"
echo "3. rename"
echo "4. delete"
echo "5.exit"
read -p "Enter your choice:" choice
case $choice in
1)read -p "Enter destination filename: " dest
cp "$filename" "$dest"
echo "File copied successfully."
2)
gedit "filename" &
;;
3)
read -p "Enter new filename: " newname
mv "$filename" "$newname"
echo "file renamed successfully."
;;
4)
rm "$filename" 
echo "file deleted successfully"
;;
5)
echo "Exiting program."
exit 0
;;
*)echo "Invalid choice.";;
esac
