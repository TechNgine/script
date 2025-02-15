#!/bin/bash

echo "Welcome to the Ultimate DevOps Quiz Game!"
echo "Answer each question by typing the letter of the correct option."
echo ""

SCORE=0

# Function to shuffle answers
ask_question() {
    QUESTION="$1"
    CORRECT="$2"
    OPTION1="$3"
    OPTION2="$4"

    # Generate a random position (0, 1, 2) for the correct answer
    POSITION=$((RANDOM % 3))

    case $POSITION in
        0) A="$CORRECT"; B="$OPTION1"; C="$OPTION2"; CORRECT_ANSWER="a";;
        1) A="$OPTION1"; B="$CORRECT"; C="$OPTION2"; CORRECT_ANSWER="b";;
        2) A="$OPTION1"; B="$OPTION2"; C="$CORRECT"; CORRECT_ANSWER="c";;
    esac

    echo "$QUESTION"
    echo "a) $A"
    echo "b) $B"
    echo "c) $C"
    read -p "Enter your answer: " ANSWER

    if [ "$ANSWER" == "$CORRECT_ANSWER" ]; then
        echo "Correct!"
        ((SCORE++))
    else
        echo "Wrong. The correct answer is ($CORRECT_ANSWER) $CORRECT."
    fi
    echo ""
}

# Linux Questions (25)
ask_question "1. What command is used to display the current working directory?" "pwd" "ls" "cd"
ask_question "2. Which command lists all files, including hidden ones?" "ls -a" "ls -l" "ls -h"
ask_question "3. What command moves a file?" "mv" "cp" "move"
ask_question "4. How do you search for text in a file?" "grep 'text' file.txt" "find 'text' file.txt" "search 'text' file.txt"
ask_question "5. Which command checks disk usage?" "df -h" "du -sh" "lsblk"
ask_question "6. How do you check available memory?" "free -m" "df -h" "top"
ask_question "7. What does 'chmod 755' do?" "Grants full access to owner" "Removes execute permissions" "Gives full access to all"
ask_question "8. What does 'rm -rf /' do?" "Deletes all files" "Removes read permissions" "Fixes file system errors"
ask_question "9. What command checks running processes?" "ps aux" "ls -p" "show proc"
ask_question "10. How do you restart a service in Linux?" "systemctl restart service" "restart service" "service restart"

# Git Questions (20)
ask_question "26. What command clones a Git repository?" "git clone" "git pull" "git repo"
ask_question "27. How do you check the status of a repository?" "git status" "git check" "git info"
ask_question "28. How do you create a new branch?" "git checkout -b new_branch" "git branch new_branch" "git new-branch"
ask_question "29. How do you merge branches?" "git merge" "git combine" "git merge-branch"
ask_question "30. How do you remove a remote branch?" "git push --delete origin branch" "git delete origin/branch" "git remove branch"

# Operating System Questions (15)
ask_question "41. What is the core of an operating system?" "Kernel" "Shell" "User Interface"
ask_question "42. What does an OS use to manage memory?" "Virtual Memory" "Cache" "Swap"
ask_question "43. What type of OS is Linux?" "Multi-user" "Single-user" "Batch Processing"
ask_question "44. What is an OS process?" "A running program" "A system call" "A shell command"
ask_question "45. Which scheduling algorithm gives each process equal time?" "Round Robin" "First Come First Serve" "Priority Scheduling"

# Scripting Questions (20)
ask_question "46. How do you execute a Bash script?" "./script.sh" "bash run script.sh" "run script.sh"
ask_question "47. How do you write a function in Bash?" "function func() { commands; }" "define func() { commands }" "fn func() { commands }"
ask_question "48. How do you pass arguments in Bash?" "\$1, \$2, ..." "args[1], args[2]" "input(arg1, arg2)"
ask_question "49. What does 'exit 0' mean?" "Successful execution" "Script failure" "Restart script"
ask_question "50. How do you loop through an array in Bash?" "for i in \${array[@]}; do echo \$i; done" "foreach i in array; do echo \$i; done" "loop array"

echo "Quiz completed!"
echo "Your final score is: $SCORE/60"
