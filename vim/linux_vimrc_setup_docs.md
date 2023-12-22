# Linux .vimrc Set-up Documentation

*The following configuration below is established through a Linux Machine. Some stuff may not work properly on a different OS*.

*IMPORTANT NOTE: We will assume that programming compliers/languages have been pre-installed before continuing.*

*Note: WSL 1/2: Ubuntu will work.*.

*Note: Not all steps may be necessary from each section in order to enable language autocomplete.*

***

## Setting up .vimrc for basic QOL

Find valid style commands and add them to each line.

*See the ```config/vim/basic_vimrc``` for an list of basic style commands.*

***

## Setting up .vimrc using Node.js

In order to install Node.js on to your system, execute the following commands below:

```curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash```

```nvm install node```

***

## Setting up .vimrc for plug-ins

Install Vim. It is optional to use gVim, Neovim, or any other custom Vim interface.

Install vim_plug through Linux with the command:

```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

In your .vimrc file, include the following: 
```
call plug#begin()
...
Plug '{user/Github directory}' (plug-in installation commands goes in here)
...
call plug#end()
```

For example, we will try to install coc.nvim (*You must also download Node.js from above for this plug-in.*)

*This is required for the upcoming sections below regarding language autocomplete.*

The plug-in command is ```Plug 'neoclide/coc.nvim', {'branch': 'release'}```

Save and exit the .vimrc file. Re-enter the file and execute ```:PlugInstall``` in command mode to install any plug-ins listed.

*Note: You should have a new folder ```vimfiles``` that stores plug-ins in the same directory as ```.vim``` and ```.vimrc```.*

*Note: Any plug-in regarding themes may have to use additional style commands and/or including the command ```colorscheme {name}``` the following line after ```call plug#end()```.*

*Note: Refer to ```config/vim/.vimrc``` regarding an extra function added in the .vimrc in order to fix tab completion in coc.nvim.* [(Details)](https://github.com/neoclide/coc.nvim/wiki/Completion-with-sources#use-tab-or-custom-key-for-trigger-completion) The following code is provided below from the given source:

```
" use <tab> to trigger completion and navigate to the next complete item
 function! CheckBackspace() abort
     let col = col('.') - 1
     return !col || getline('.')[col - 1]  =~# '\s'
 endfunction

inoremap <silent><expr> <Tab>
    \ coc#pum#visible() ? coc#pum#next(1) :
    \ CheckBackspace() ? "\<Tab>" :
    \ coc#refresh()

inoremap <c-b> <Esc>:NERDTreeToggle<cr>
nnoremap <c-b> <Esc>:NERDTreeToggle<cr>
```

*Note: Check the ```coc-settings.json``` section and add ```"suggest.noselect": true``` to fix tab completion initially defaulting to the second entry.* [(Details)](https://github.com/neoclide/coc.nvim/issues/4283)

*Note: List of [colorschemes](https://vimcolorschemes.com/) and [additional cs](https://github.com/rafi/awesome-vim-colorschemes).*

More information regarding each plug-in can be found from searching the exact name of the plug-in.

Now, you should see the style commands in action the next time a file is opened in any interface of Vim.

***

## Setup coc-settings.json for coc.nvim customization

Find your ```~/vimfiles/coc-settings.json``` file or open a new file in any interface of Vim and execute the command: ```:CocConfig```.

Install coc-json by executing the given command: ```CocInstall coc-json```.

You may edit your coc-settings.json using any text editor and use the basic format below.

```json
" coc-settings
{

  "{attribute: name of command}": {toggle: true/false}

}
```

More details about each command can be found by executing the command: ```:h coc-config``` in any interface of Vim.

***

## Setup coc.nvim for C/C++ support

Install g++ for C/C++ Language by executing the command: ```sudo apt-get install g++```.

Install clangd (c/cpp suggestions) by executing the command: ```sudo apt install clangd```.

Open a C or C++ file through any Vim interface.

In command mode, execute the command ```:CocInstall coc-clangd```.

Now, you should see prompt pop-ups as you type something similar to C/C++ syntax.

***

## Setup coc.nvim for Python support

Install Python on to your Linux system.

Open a Python file through any Vim interface.

In command mode, execute the command ```:CocInstall coc-pyright```.

*Note: On the other hand, the command ```:CocInstall coc-python``` does not work if the current Python version is at least 3.XX.*

Now, you should see prompt pop-ups as you type something similar to Python syntax.

***

## Setup coc.nwim for Java support

Install Java or Java SE on your Linux system.

Open a Java file through any Vim interface.

User the command ```:CocInstall coc-java```.

Now, you should see prompt pop-ups as you type something similar to Java syntax.

***

## Setup coc.nvim for HTML

*TBD*

***

## Setup coc.nvim for CSS

*TBD*

***

## Setup coc.nvim for JavaScript

*TBD*
