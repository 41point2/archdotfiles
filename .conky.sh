#!/bin/bash

# Copyright Chris Cherry, ckcherrylfc@gmail.com       

# These files and scripts are distributed in the hope that they will be useful, but WITHOUT ANY
# WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
# PURPOSE. See the GNU General Public License for more details.

# This script is called by i3 in $HOME/.config/i3/config. It checks if Conky is running by requesting its 
# process id and redirecting stdout to /dev/null. If the command results in an exit status of 1 (failed) 
# then it starts Conky from the config file in user $HOME/.conkyrc and terminates the script.
# Otherwise, if Conky is running, it kills its process and restarts it from the config file in user 
# $HOME/.conkyrc and terminates.

# This script is required because multiple instances of Conky can run, and for the specific Conky layout 
# in these dotfiles it creates a mess. It can terminate multiple running instances of Conky, provided they
# are all owned by the logged in user.

pidof conky > /dev/null
if [ $? == 1 ]
then conky -d -c $HOME/.conkyrc
else
kill -sigkill $(pidof conky) && conky -d -c $HOME/.conkyrc
fi
