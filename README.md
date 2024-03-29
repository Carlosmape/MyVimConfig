# My custom NeoVim configuration   
This configuration uses native NeoVim LUA compatibility. It is based in [shiftwinting configuration](https://github.com/shiftwinting/defaults.nvim)  
I highly recomend to install latest Neovim (due to some plugin compatibility, and becouse recent versions are performance optimized)   
    
### What it does?
Configuration file has my own nvim customization. It contains some rules, a plugin manager and also some plugins ready to be installed.  
Main features are:   
 - Plugin manager  
 - Native LSP support (async code checkers/compilers)   
 - Native Linting support (async code-style checkers)  
 - Compatibility with Git commands (and signs for each buffer lines)  
 - Rich code highlighting   
 - And more...   

### How it looks?
_TODO: update this image, should be great to have a GIF_   
![image](https://user-images.githubusercontent.com/5487555/139299081-a65cdc0b-261c-4412-a04a-cec806bc45e9.png)
    
### How do I install(?) or whatever   
 1. This file should be placed on ~/.config/nvim/init.lua (simply move to nvim config folder and clone this repository)   
 2. init.lua has in the top of the file an auto Packer installation process. So, to install it just open nvim once.
 3. Once there, you should open nvim (agian, to let it to load Packer) and install plugins as says Packer repo:   
    On command mode type `:PackerInstall`   
 5. Enjoy :)!    
    
### How do I use?   
This section is something like a quick-guide to has in mind (specially for those as I, not allways remembers some commands)    
Leader key is space bar (` `) This key is used to run custom mapping in Normal mode      
 				a   
#### Inherit VIM commands   
Vim inherit commands [See more](https://neovim.io/doc/user/motion.html)(Motion commands should be used in Normal mode or pushing `<Alt>`+`<motion cmd>` in another mode)
Almost all motion commands allows you to insert a number before the command. For example write `5w` will move 5 words fordward:
| Command                      | Moves...                               |
|------------------------------|----------------------------------------|
| `w`                          | To next word begin                     |
| `b`                          | To prev. word begin                    |
| `e`                          | To (current/next) word end             |  
| `G`                          | To last file line                      |
| `^\|_`                          | To current line starting (non-blank) char |
| `$`                          | To current line end                    |
| `%`                          | In a bracket, parenthesis or similar, goes to its pair |
| `g` + `[moving cmd \| g]`    | To `moving cmd` or file first line (samples: `g0` goes to char '0' in the current line) `g_` goes to last non-blank charachter of the line `gm` goes to the middle of the screen |
| `<Ctrl>` + `w` + `[moving cmd \| w]` | Moves between opened splitted windows `w` in clycle |
       
| Control commands              | Does                                                     |  
|-------------------------------|----------------------------------------------------------|  
| `<Esc>`                       | Enters in command mode                                   |  
| `i`                           | Enters in insert mode (at current cursor position). **Note** Uppercase will insert at the line beginning |  
| `a`                           | Enters in insert mode (append, just after current cursor position). **Note** Uppercase will append at the end of the line |  
| `o`                           | Opens a new line under cursor position and enters in insert mode. **Note** Uppercase will act backwards (new line will be inserted above) |
| `r` + `[moving cmd]`			| Replaces cursor text (if in visual mode or using `moving cmd` will replace all characters with given one). **Note** Uppercase will enter in replace mode (like insert but replacing all) |
| `c` + `[moving cmd \| c ]`    | Changes current cursor until `moving cmd` (or complete line). Does a `d` until `moving cmd` + `insert`. **Note** Uppercase to change from cursor til line end |
| `v`                           | Enters in visual mode (to select a piece of code). **Note** Uppercase will enter in VisualBlock mode |  
| `d` + `[moving cmd \| d ]`    | Deletes (cuts) from cursor to `moving cmd` (or complete line). In visual mode, deletes currently selected piece of code. **Note** Uppercase is the same to do `dd` or `d$` |   
| `.` 							| In normal mode, repeats last inserted text until `<CR>` |   
| `y` + `[moving cmd \| y ]` 	| In normal mode, yanks (copies) til `moving cmd` (or complete line). In visual mode, yanks selected piece of code. **Note** Uppercase is the same to do `yy` or `d$` |  
| `x`                        	| In visual mode, cuts selected piece of code. **Note** Uppercase will do it in backwards |  
| `p`                        	| Pastes clipboard content after current cursor position (if in visual mode and something is selected, then replace current selected content). **Note** Uppercase will act backwards |  
| `*\|#`                     	| Searches (like `/` cmd) current cursor word in entire file `n\|N` or `*\|#` |   
| `q` + `{letter}` 				| To record a macro. All commands done after record starts can be executed using `@` + {letter}. **Note** Indicates number of repetitions before executing a macro will do the macro many times |  
| `m` + `{letter}` 				| Creates a Bookmark in the current line. Use `'{letter}` to move to a bookmark. **Note** Uppercase to define global bookmarks (Allows to move between files) |     
   
#### Specific for used plugins    
Mapped commands:     
| Custom command      	| Does             |
|-----------------------|------------------|
| `gd` 					| nvim-lsp go to definition |
| `gr` 					| nvim-lsp find references of current symbol |
| `[\|]`+ `d`			| nvim diagnostic go to prev\|next |
| `<Ctrl>` + `o\|i` 	| Navigate throw last cursor position or recently opened buffers i.e: perform lsp go to definition and press `<Ctrl>o` will return to original buffer |
| `gcc` 				| comments current line in normal mode or selected lines in visual mode |
      
### Credits: used plugins
 - Packer (Plugin manager [wbthomason/packer.nvim](https://github.com/wbthomason/packer.nvim))  
 - LSPconfig (Native support for LSP [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig))
 - Plenary (Dependency for another plugins. Supports nvim + lua for async tasks [nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim))
 - Vim-Fugitive (Git commands in nvim [tpope/vim-fugitive](https://github.com/tpope/vim-fugitive))
 - Vim-Commentary (block, single line... commentaries from keymaps [tpope/vim-commentary](https://github.com/tpope/vim-commentary))
 - GruvBox (Lua port of this well known colorscheme plugin [ellisonleao/gruvbox.nvim](https://github.com/ellisonleao/gruvbox.nvim))
 - LightLine (Statusline plugin [itchyny/lightline.vim](https://github.com/itchyny/lightline.vim))
 - <Under construction... there are more plugins but not all of them are in this section>    
       
