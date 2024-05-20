# guessinggame.sh

#!/bin/bash

function guess_file_count {
    local num_files=$(ls -l | grep "^-" | wc -l)
    local guess=-1
    
    while [[ $guess -ne $num_files ]]; do
        read -p "How many files are in the current directory? " guess
        
        if [[ $guess -lt $num_files ]]; then
            echo "Too low. Try again."
        elif [[ $guess -gt $num_files ]]; then
            echo "Too high. Try again."
        fi
    done
    
    echo "Congratulations! You guessed correctly."
}

guess_file_count

