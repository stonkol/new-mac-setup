# LazyVim

`#Vim` `#Neovim`

## shortcuts

Based on this modern [Vim Cheatsheet](https://devhints.io/vim)

### Insert Mode
i           Insert mode
I           Insert at the beginning of the line
A           Insert text at the end of the line
crtl+w      Delete current letter to the first letter of a word
ctrl+u      Delete everything from the current letter to the first letter


### Navigating
0          	Start of line
^	          Start of line (after whitespace)
$	        End of line

### Command Mode
shift+;     show command line
    - wq    save and quit
    - wqa   save in all the files, clean buffer and quit

<space>     show main shortcuts
    -   e           folder view
    -   E           current loaction folder view
    -   g           goto
    -       - c       uncomment selected text
    -   c > r       rename a name in the whole page (typescropt laguage server (lsp feature))
    - u > U         change theme

### Clipboard
x	Delete character
dd	Delete line (Cut)
yy	Yank line (Copy)
p	Paste
P	Paste before
"*p / "+p	Paste from system clipboard
"*y / "+y	Paste to system clipboard

### Navigating

h j k l	        Arrow keys
<C-U> / <C-D>	Half-page up/down
<C-B> / <C-F>	Page up/down

#### Words

b / w	  Previous/next word
ge / e	Previous/next end of word

#### Line

0   	Start of line
^	    Start of line (after whitespace)
$	    End of line

#### Character

fc	     Go forward to character c
Fc	     Go backward to character c

#### Document

gg	     First line
G	      Last line
:{number}	Go to line {number}
{number}G	Go to line {number}
{number}j	Go down {number} lines
{number}k	Go up {number} lines

#### Window

zz	  Center this line
zt	  Top this line
zb	  Bottom this line
H	  Move to top of screen
M	  Move to middle of screen
L	  Move to bottom of screen

#### Search

n	  Next matching search pattern
N	   Previous match
*	   Next whole word under cursor
`#`    Previous whole word under cursor

### Tab pages

:tabedit [file]	    Edit file in a new tab
:tabfind [file] 	Open file if exists in new tab
:tabclose     Close current tab
:tabs	      List all tabs
:tabfirst     Go to first tab
:tablast      Go to last tab
:tabn	      Go to next tab
:tabp	      Go to previous ta%


### Editing

a	  Append
A	  Append from end of line
i	  Insert
o	  Next line
O	  Previous line
s	  Delete char and insert
S	  Delete line and insert
C	  Delete until end of line and insert
r	  Replace one character
R	  Enter Replace mode
u	  Undo changes
<C-R>	Redo changes

### Visual mode

v	Enter visual mode
V	Enter visual line mode
<C-V>	Enter visual block mode
In visual mode
d / x	Delete selection
s	Replace selection
y	Yank selection (Copy)

### Exiting

:q	        Close file
:qa	        Close all files
:w	        Save
:wq / :x	Save and close file
ZZ	        Save and quit


### my notes
c > m       open mason (the installer manager)
q           quit
i           edit(input) file
<esc>       leave editing mode
u           undo
j           next line
<nm>+j      jump to <nm> lines below
shift+v     select lines

### Normal Mode
s           jump(fly) to anywhere(leap.nvim plugin)
ddp         swap current and below line
x           delete
dl"         delete all the things inside the current " "
dG          delete from the current line to last line, or the whole doc if if you are in the first line

y           copy
yy          copy entire line

yi"         copy all the text inside the " "
p           paste

# Install

## 1. Install LazyVim

### Official Installation [Docs](https://www.lazyvim.org/installation)
Make a backup of your current neoVim files:

```shell
# required
mv ~/.config/nvim{,.bak}

# optional but recommended
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}
```

Clone the starter:

`$ git clone https://github.com/LazyVim/starter ~/.config/nvim`

Remove the `.git` folder, so you can add it to your own repo later

`$ rm -rf ~/.config/nvim/.git`

Start neoVim!
`$ nvim`

> [!TIP]
> It is recommended to run `:LazyHealth` after installation. This will load all plugins and check if everything is working correctly.

Restart your terminal

### 2. LazyVim requirements

1. git installed
1. Using Neovim >= 0.9.0
1. `rg` installed
1. `{ "fd", "fdfind" }` installed
1. `lazygit` installed

#### 2.3 Install rg

`$ brew install ripgrep`

#### 2.4 Install fd

`$ brew install fd`

#### 2.5 Install [LazyGit](https://github.com/jesseduffield/lazygit)

Homebrew download
```shell
brew tap jesseduffield/lazygit
brew install lazygitbrew tap
```

Install Lazygit:
`$ brew install lazygit`

## 3. Install Lua

`$ brew install lua `

## 4. Python shit

If it is telling you that there are no python modules
`$ python3 -m pip install --user --upgrade pynvim`
