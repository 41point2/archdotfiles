#!/bin/bash

# Copyright Chris Cherry, ckcherrylfc@gmail.com 

# These files and scripts are distributed in the hope that they will be useful, but WITHOUT ANY
# WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
# PURPOSE. See the GNU General Public License for more details.


# Arch Linux specific script. Is called from .conkyrc with the command ${execpi 180 sudo $HOME/.paccheck.sh}
# This command executes this script every 180 seconds with sudo privileges. The first part executes pacman 
# with database refresh with sudo and redirects stdout to /dev/null. On successful execution of this command, 
# the second part executes pacman to query the database, and show only upgrades and only basic information.
# The information from pacman is printed to stdout on separate lines, so the final part of the command pipes 
# the result to wordcount and returns the number of lines. The number of lines is then shown in Conky.

# Script runs as sudo, and you'll need to modify your sudoers file in order for it to work. See the README 
# file for more details and explicit warnings about the dangers of this.

sudo pacman -Sy > /dev/null && pacman -Quq | wc -l
