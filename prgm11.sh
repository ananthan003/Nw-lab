names=("Ananthu" "Akshay" "Ashus" "Nandhu" "joyal" )
echo "Number of names: ${#names[@]}"
echo "Name at index 2: ${names[2]}"
echo "list of names:"
for name in "${names[@]}"; do
echo $name
done
