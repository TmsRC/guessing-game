function victory {
 guessed_correctly=true
 echo "Congratulations. You won."
 echo "---------------------------------------------"
}

guessed_correctly=false
echo "---------------------------------------------"
echo "Guess the number of files in this directory:"

while  ! $guessed_correctly
do

 read response
 let number_of_files=$(ls | wc -w)
 echo

 if [[ $response -eq $number_of_files ]]
 then
  victory
 elif [[ $response -gt $number_of_files ]]
 then
  echo "It's less than that. Try again:"
 elif [[ $response -lt $number_of_files ]]
 then
  echo "It's more than that. Try again:"
 fi

done
