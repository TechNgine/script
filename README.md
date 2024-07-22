Certainly! Here's a more polished and organized version of your README:

# List of Scripts

This document provides a list of scripts discussed in class, along with instructions on how to run them and a brief description of their functionality.

## List of Scripts

1. `nginxscript.sh`
2. `assignment.sh`
3. `copy&paste.sh`
4. `set_network_adapter.sh`
5. `setup_database.sh`
6. `greet.sh`
7. `to-do-list.sh`
8. `weather.sh`
9. `network_scan.sh`
10. `quiz.sh`

## How to Run the Scripts

**Give execute permission to the script:**

```bash
chmod +x scriptname.sh
```

**Run the script:**

```bash
./scriptname.sh
```

### `nginxscript.sh`

This script installs and configures Nginx. It also clones the Tindog website repository and serves it at `localhost`.

### `assignment.sh`

Creates a directory named "bank" as required for the assignment.

### `copy&paste.sh`

**Instructions:**

1. Mount the Guest Additions ISO:
   - Before running the script, make sure to mount the VirtualBox Guest Additions ISO via the VirtualBox interface: 
     - Select the VM and go to `Devices > Insert Guest Additions CD image...`

2. Run the script:
   - This script handles the installation of required packages, mounts the Guest Additions CD, runs the installer, and cleans up afterward.

3. Reboot the VM:
   - After the script completes, reboot the virtual machine to ensure all changes take effect.

### `set_network_adapter.sh`

This script configures your VM with three network adapters: 
- One for internal communication
- One for host-only communication
- One for internet access via NAT

**Ensure VirtualBox and VBoxManage are installed:**
- Make sure VirtualBox is installed on your host machine, and VBoxManage is available in your system's PATH.

### `setup_database.sh`

This script installs MySQL, secures the installation, creates a new database and user, and provides the connection details for accessing the database.

**Follow Prompts:**
- Enter the MySQL root password when prompted.
- Enter the name for the new database.
- Enter the name and password for the new MySQL user.

**Additional Information:**
- After running the script, it will display a message with the URL to access the MySQL server and the command to connect to the MySQL server using the created user credentials.
- Make sure to use the correct MySQL user password when connecting to the database.

### `greet.sh`

Greets you based on the time of the day.

### `to-do-list.sh`

A simple script to manage a to-do list.

### `weather.sh`

Uses wttr.in to get weather information.

### `network_scan.sh`

Scans the network using nmap.

### `quiz.sh`

The script asks five questions in a specified format:
- Each question displays the possible answers and prompts the user for input.
- The script checks the user's answer and provides feedback on whether it was correct.
- After answering all the questions, the script indicates that the quiz is completed.

Feel free to explore and run these scripts to learn more about their functionality and improve your scripting skills!
### `for_loop`
This script uses a C-style for loop syntax to iterate from 0 to 4, printing each iteration. The syntax for (( i=0; i<5; i++ )) is a common way to write loops in languages like C, C++, and Java, and it's also supported in Bash.

### `while_loop`
This script demonstrates the use of a while loop in Bash.

### 'if_then_else`
The script prompts the user to enter a number.
It then checks if the number is even or odd using a simple if-then-else statement.
If the number is even (number % 2 == 0), it prints "The number is even."
Otherwise, it prints "The number is odd."
The (( ... )) syntax is used for arithmetic evaluation in Bash.
