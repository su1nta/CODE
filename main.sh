#!/bin/bash

function start() {
    echo "Executing Function 1"
    # Call script file for function1
}

function stop() {
    echo "Executing Function 2"
    # Call script file for function2
}

function build() {
    echo "Executing Function 3"
    # Call script file for function3
}

read -p "Enter a function number (1, 2, 3): " user_input

case $user_input in
    1)
        function1
        ;;
    2)
        function2
        ;;
    3)
        function3
        ;;
    *)
        echo "Invalid input"
        ;;
esac