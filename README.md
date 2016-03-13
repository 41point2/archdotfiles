# archdotfiles
Dot files for i3wm, Conky and custom update notification scripts in Arch Linux.

These files and scripts are distributed in the hope that they will be useful, but WITHOUT ANY 
WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR 
PURPOSE. See the GNU General Public License for more details.

In order for the .paccheck.sh script and subsequent commands to work, you will need
to insert this line in your sudoers file (run visudo), where 'user' is your username
or the username of any user you want to have access to it.

user ALL=(ALL) NOPASSWD: /home/chris/.paccheck.sh

*** IMPORTANT ***
THIS ENTRY IN YOUR SUDOERS FILE MEANS THAT THE NAMED USER IS ABLE TO MODIFY AND EXECUTE 
THIS FILE AND THE COMMANDS WITHIN, WITH SUDO PRIVILEGES AND WITHOUT A PASSWORD.
*** IMPORTANT ***

The implications of this could be serious: effectively, if you use the above entry and 
do not protect this file with AT LEAST discretionary access controls (chmod) preventing 
other users from accessing  the file in any way, the contents of the file can be altered 
to allow a user to execute arbitrary commands as root.

You MUST secure this file by AT THE VERY LEAST chmodding it to 700, and preferably using it 
only on systems with mandatory access control systems like grsecurity or SELinux.

This script is not designed for anything other than a person system where the main user is a 
superuser and where there are limited opportunities to compromise it without physical access 
or explicitly being given root access. In other words, it was designed for a specific use-case 
on a desktop system.

This script should NOT be run or installed for any untrusted users: it should only be used if 
you know what you're doing, and access to run it in the suoers file only given to users who have 
sudo privileges in the first place.

Otherwise, it serves a great function for me, and I hope you get some use out of it.
