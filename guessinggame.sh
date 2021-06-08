dirpath=($(ls -d */))
filecount=${#dirpath[@]}
dirguess=0

while [ $dirguess -ne $filecount ]
do
echo "Guess the number of files in the directory!"
read dirguess
$(verifyguess $dirguess $filecount)
done

function verifyguess 
{
    if [[ $1 -lt $2 ]]
    then echo "Guess is lesser than expected"
    elif [[ $1 -gt $2 ]]
    then echo "Guess is higher than expected"
    elif
    then echo "Congratulations!!"
}


