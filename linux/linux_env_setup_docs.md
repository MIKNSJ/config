# Linux Environment Setup Documentation

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

If you have currently installed WSL and Ubuntu, then you may want to consider updating them to the latest version.

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

Check if the current Ubuntu and WSL versions match by executing ```wsl -l --v``` or ```wsl -l --verbose```.

*Note: Versions only have to match to its nearest integer.*

If not, execute the following command in CMD or PowerShell: ```wsl --set-version Ubuntu-{your version number: 2X.XX goes here} 2```.

If Windows does not recognize the command (not found) above, use:  ```wsl --set-version Ubuntu 2``` instead.

*Note: The command will not execute, if you get prompted to install optional components for WSL through CMD/PowerShell and/or from a Windows notification.*

If promoted, install the optional components for WSL in either way and then perform a reboot/restart. After rebooting/restarting, execute the same command that worked from above. This process may take a few minutes.

Now, if you execute ```wsl -l --v``` again, then the versions for WSL and Ubuntu should match.

***

## Install Valgrind and GDB

In order to install Valgrind and GDB on to your system, execute the following commands:

valgrind: ```sudo apt install valgrind```

gdb: ```sudo apt install gdb```

Now, you should have valgrind and gdb installed in your system.

You can check by executing ```valgrind``` and/or ```gdb``` in Ubuntu.

***

## Install Node.js

In order to install Node.js on to your system, execute the following commands:

```curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash```

```nvm install node```

Now, you should have Node.js installed in your system.

You can check by executing ```node --version``` in Ubuntu.

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

Execute the command ```sudo apt install build-essential```.

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

## Install LaTeX

Install a pdf viewer for Linux, in this example, we will use Zathura by executing the command ```sudo apt install zathura```.

Install Tex packages by executing the command ```sudo apt install texlive```.

*Note: There are different TexLive versions that range in total storage size based on the number of packages that you want to install. See below for more details.*

Package                    Archives  Disk Space \
-------------------------  --------  ---------- \
texlive-latex-base            59 MB      216 MB \
texlive-latex-recommended     74 MB      248 MB \
texlive-pictures              83 MB      277 MB \
texlive-fonts-recommended     83 MB      281 MB \
texlive                       98 MB      314 MB \
texlive-plain-generic         82 MB      261 MB \
texlive-latex-extra          144 MB      452 MB \
texlive-full                2804 MB     5358 MB

[Source](https://tex.stackexchange.com/questions/245982/differences-between-texlive-packages-in-linux)

*Note: If you want to install individual packages, execute the command ```sudo tlmgr install {package_name}```.*

You can check the installations by executing the commands: ```zathura --version``` and ```pdflatex --version```.

***
