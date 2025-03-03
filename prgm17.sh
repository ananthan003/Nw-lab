echo -n "Enter marks for subject1:"
read sub1
echo -n "Enter marks for subject2:"
read sub2
echo -n "Enter marks for subject3:"
read sub3
total=$((sub1 + sub2 + sub3))
echo "Total marks: $total"
if [ $total -ge 270 ]; then
grade="A"
elif [ $total -ge 240 ]; then
grade="B"
elif [ $total -ge 210 ]; then
grade="C"
elif [ $total -ge 180 ]; then
grade="D"
else
grade="F"
fi
echo "Your Grade: $grade"
