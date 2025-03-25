while true
do
echo "---------------------------------------------------------"
echo "1.Search for a movie name in a file"
echo "2.Count occurences of a movie name in a file"
echo "3.find movies starting with a specific word"
echo "4.find movies ending with a specific word"
echo "5.Display only the first match of a movie name"
echo "6.count the total no of movies"
echo "7.replace a movie name using grep and sed"
echo "8.exit"
echo "---------------------------------------------------------"
echo "Enter your choice"
read choice

case $choice in
1)
echo "Enter the movie name to search for:"
read movie
grep -i "$movie" movie_list.txt
;;

2)
echo "Enter the movie name to count occurrences:"
read movie
grep -i -c "$movie" movie_list.txt
;;

3)
echo " Enter movies starting with a specific word:"
read movie
grep -i "^$movie" movie_list.txt
;;

4)
echo " Enter movies starting with a specific word:"
read movie
grep -i "$movie$" movie_list.txt
;;

5)
echo "Enter the movie name to display the first match:"
read movie
grep -i "$movie" movie_list.txt | head -n 1
;;

6)
total=$(wc -w < movie_list.txt)
echo "Total number of movies: $total"
;;

7)
echo "Enter the movie name to replace:"
read old_movie
echo "Enter the new movie name:"
read new_movie
sed -i "s/$old_movie/$new_movie/g" movie_list.txt
echo "Movie name replaced successfully."
;;

8)
exit 0
;;
esac 
echo "enter"
read
done

