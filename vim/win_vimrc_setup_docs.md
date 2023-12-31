# Windows .vimrc Set-up Documentation

*The following configuration below is established through a Windows OS Machine. Some stuff may not work properly on a different OS*.

*Note: Not all steps may be necessary from each section in order to enable language autocomplete.*

***

## Setting up .vimrc for basic QOL

Find valid style commands and add them to each line.

*See the ```config/vim/basic_vimrc``` for an list of basic style commands.*

***

## Setting up .vimrc for plug-ins

Install Vim. It is optional to use gVim, Neovim, or any other custom Vim interface.

Install vim_plug through Windows Powershell with the command:

```iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |` ni $HOME/vimfiles/autoload/plug.vim -Force```

In your .vimrc file, include the following: 
```
call plug#begin()
...
Plug '{user/Github directory}' (plug-in installation commands goes in here)
...
call plug#end()
```

For example, we will try to install coc.nvim (*You must also download Node.js and set the correct PATH for this plug-in.*)

*This is required for the upcoming sections below regarding language autocomplete.*

The plug-in command is ```Plug 'neoclide/coc.nvim', {'branch': 'release'}```

Save and exit the .vimrc file. Re-enter the file and execute ```:PlugInstall``` in command mode to install any plug-ins listed.

*Note: You should have a new folder ```vimfiles``` that stores plug-ins in the same directory as ```.vim``` and ```.vimrc```.*

*Note: Your ```coc``` file may be located in ```.../AppData/Local/coc```.*

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

Install MingGW for C/C++ Language.

Install clangd (c/cpp suggestions) by LLVM (separate installation and automatically connects to Windows User Path).

*Note: This may prevent an issue regarding the ```:CocInstall``` and ```:CocCommand``` commands resulting in a potential pathing issue of clangd.* [(Details)](https://github.com/clangd/coc-clangd/issues/61)

Open a C or C++ file through any Vim interface.

In command mode, execute the command ```:CocInstall coc-clangd```.

If you installed clangd, feel free to ignore any PATH warnings.

*Note: You may encounter an additional command regarding ```:CocCommand clangd.install``` based on a different type of installation which may be exceuted if coc.nvim does not work properly.*

Now, you should see prompt pop-ups as you type something similar to C/C++ syntax.

***

## Setup coc.nvim for Python support

Install jedi on Windows Powershell executing the command ```pip3 install jedi```.

Open a Python file through any Vim interface.

In command mode, execute the command ```:CocInstall coc-pyright```.

Feel free to ignore any PATH warnings.

*Note: On the other hand, the command ```:CocInstall coc-python``` does not work if the current Python version is at least 3.XX.*

Now, you should see prompt pop-ups as you type something similar to Python syntax.


*Note: Additional command(s) that I used, but I do not know if it is necessary:*

Install pynvim executing the command ```pip install pynvim``` in Windows Powershell (generated by ChatGPT).

***

## Setup coc.nwim for Java support

Install Java or Java SE and set the Windows PATH manually or through installation.

Open a Java file through any Vim interface.

User the command ```:CocInstall coc-java```.

Feel free to ignore any PATH warnings.

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

***

## Setup coc.nvim for LaTeX

Install LaTeX in your Windows system.

Using your plug-in manager in your ```.vimrc``` file, install vimtex by executing ```Plug 'lervag/vimtex'```.

Open up a file in any interface of Vim.

*Note: You may need to add the command ```set encoding=utf-8``` to your .vimrc if prompted.*

In command mode, execute the command ```:CocInstall coc-vimtex```.

Refer to built-in vimlatex commands [here](https://github.com/lervag/vimtex/blob/e323c55e9669c1adb205295b06ec4463bae5b637/doc/vimtex.txt#L669).

*Note: You just need to execute ```\ll``` in command mode of a file which will automatically compile, show errors if necessary, and output/view the pdf version.*

*Note: To change between PDF viewers add the command ```let g:vimtex_view_method = '{name_pdf_viewer_executable}'``` into your .vimrc.*

Now, you should see prompt pop-ups as you type something similar to LaTeX syntax.

***
