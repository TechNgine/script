#!/bin/bash

echo "Welcome to the Quiz Game!"

# Question 1
echo "1. What is the command to copy a repo locally?"
echo "a) git repo"
echo "b) git clone"
echo "c) git pull"
read -p "Enter your answer: " ANSWER

if [ "$ANSWER" == "b" ]; then
    echo "Correct!"
else
    echo "Wrong. The correct answer is b) git clone."
fi
echo ""

# Question 2
echo "2. What command is used to list files and directories in Linux?"
echo "a) ls"
echo "b) list"
echo "c) show"
read -p "Enter your answer: " ANSWER

if [ "$ANSWER" == "a" ]; then
    echo "Correct!"
else
    echo "Wrong. The correct answer is a) ls."
fi
echo ""

# Question 3
echo "3. What is the command to check the current working directory in Linux?"
echo "a) pwd"
echo "b) cwd"
echo "c) curdir"
read -p "Enter your answer: " ANSWER

if [ "$ANSWER" == "a" ]; then
    echo "Correct!"
else
    echo "Wrong. The correct answer is a) pwd."
fi
echo ""

# Question 4
echo "4. What is the default port number for Nginx?"
echo "a) 80"
echo "b) 8080"
echo "c) 443"
read -p "Enter your answer: " ANSWER

if [ "$ANSWER" == "a" ]; then
    echo "Correct!"
else
    echo "Wrong. The correct answer is a) 80."
fi
echo ""

# Question 5
echo "5. How do you check the status of a Git repository?"
echo "a) git check"
echo "b) git status"
echo "c) git info"
read -p "Enter your answer: " ANSWER

if [ "$ANSWER" == "b" ]; then
    echo "Correct!"
else
    echo "Wrong. The correct answer is b) git status."
fi
echo ""

echo "Quiz completed!"
