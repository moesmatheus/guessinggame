#Proccess the guess
function get_num_file {
local number=$(ls | wc -l)
echo $number
}

#Get the number of files:
num_files=$(get_num_file)


#Type of guess 1 for correct 0 for false
type=0

while [[ $type -ne 1 ]]; do

    #Ask for the number of files
    echo "Guess the number of files in the folder:"
    read guess

    if [[ $guess -eq $num_files ]]
    then
        echo "Your guess was correct!"
        type=1

    elif [[ $guess -lt $num_files ]]
    then
        echo "Your guess was to low"
    else
        echo "Your guess was to high"
fi
done
