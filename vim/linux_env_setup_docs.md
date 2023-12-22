# Linux Enviroment Setup Documentation

We want to setup a Linux Environment for doing basic tasks.

***

## Configure a Linux OS

For this documentation, we will consider using WSL. Otherwise, you may skip this step if you already have it pre-installed.

Install WSL by executing the command ```wsl --install``` in Command Prompt or Windows Powershell.

*Note: You may need to enable WSL in Windows Features if you are getting permission errors.*

If using WSL, we will also download Ubuntu and Windows Terminal from the Microsoft Store.

Configure Windows Terminal to include a new profile to open Ubuntu.

Setup Ubuntu by setting a username and password.

***

# [OPTIONAL]: Updating WSL and Ubuntu

Check the current WSL version by executing ```wsl --version``` in CMD or PowerShell.

Check the current Ubuntu version by executing ```lsb_release -a``` in Ubuntu.

Update to the latest WSL verion by executing ```wsl --update```.

Update to the latest Ubuntu verion by executing the following:

```
sudo apt update        # Fetches the list of available updates
sudo apt upgrade       # Installs some updates; does not remove packages
sudo apt full-upgrade  # Installs updates; may also remove some packages, if needed [OPTIONAL]
sudo apt autoremove    # Removes any old packages that are no longer needed [OPTIONAL]
```

Check if the current Ubuntu and WSL versions match by executing ```wsl -l -v```.

*Note: Versions only have to match to its nearest integer.*

If not, execute the following command in CMD or PowerShell: ```wsl --set-version Ubuntu-{your version goes here} 2```.

If Windows does not recognize the command (not found) above, use:  ```wsl --set-version Ubuntu 2``` instead.

*Note: The command will not execute, if you get prompted to install optional components for WSL through CMD/PowerShell and/or from a Windows notification.*

If promoted, install the optional components for WSL in either way and rerun the same command that worked from above.

Now, if you execute ```wsl -l -v```, then the versions for WSL and Ubuntu should match.

***

## Install Valgrind and GDB

In order to install Valgrind and GDB on to your system, exceute the following commands:

valgrind: ```sudo apt install valgrind```

gdb: ```sudo apt install gdb```

***

## Install Node.js

In order to install Node.js on to your system, exceute the following commands:

```curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash```

```nvm install node```

***

## Install Git

*TBD*

***

## Install Python

*TBD*

***

## Install Java

*TBD*

***

## Install C/C++

*TBD*

***

## Install HTML

*TBD*

***

## Install CSS

*TBD*

***

## Install JavaScript

*TBD*

***
