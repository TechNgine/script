#!/bin/bash
TODO_FILE="$HOME/todo.txt"

echo "To-Do List Manager"
echo "1. View To-Do List"
echo "2. Add To-Do Item"
echo "3. Remove To-Do Item"
echo "4. Exit"

read -p "Choose an option: " OPTION

case $OPTION in
    1)
        if [ -f "$TODO_FILE" ]; then
            cat "$TODO_FILE"
        else
            echo "No to-do items found."
        fi
        ;;
    2)
        read -p "Enter the new to-do item: " ITEM
        echo "$ITEM" >> "$TODO_FILE"
        echo "Item added."
        ;;
    3)
        read -p "Enter the line number to remove: " LINE_NUM
        sed -i "${LINE_NUM}d" "$TODO_FILE"
        echo "Item removed."
        ;;
    4)
        echo "Goodbye!"
        exit 0
        ;;
    *)
        echo "Invalid option."
        ;;
esac
