#  List of Script
List of scripts discussed in class
nginxscript.sh
assignment.sh
copy&paste.sh
set_network_adapter.sh
setup_database.sh

## How to run to script

**Give execute permission to script**
_chmod +x iscriptname.sh_

**Run script**
_./scriptnamesh_

### nginxscript
This script installs nginx
Setups Nginx and configures nginx
git clone tinodg website and server it at : localhost

### assignment
Creates the bank folder as the assignment required

### copy&paste

**Instructions**

Mount the Guest Additions ISO: Before running the script, make sure to mount the VirtualBox Guest Additions ISO. This can be done via the VirtualBox interface:

_Select the VM and go to Devices > Insert Guest Additions CD image...
Run the Script: 
Reboot the VM: After the script completes, reboot the virtual machine to ensure all changes take effect.

This script handles the installation of required packages, mounts the Guest Additions CD, runs the installer, and cleans up afterward._

### set_network_adapter.sh

By running this script, your VM will be configured with three network adapters: one for internal communication, one for host-only communication, and one for internet access via NAT.
_Ensure VirtualBox and VBoxManage are Installed:
Make sure VirtualBox is installed on your host machine, and VBoxManage is available in your system's PATH. This is usually done during the VirtualBox installation process.

### setup_database

This script installs MySQL, secures the installation, creates a new database and user, and provides the connection details for accessing the database.

_Follow Prompts:

Enter the MySQL root password when prompted.
Enter the name for the new database.
Enter the name and password for the new MySQL user.
Additional Information:
After running the script, it will display a message with the URL to access the MySQL server and the command to connect to the MySQL server using the created user credentials.
Make sure to use the correct MySQL user password when connecting to the database._





_
