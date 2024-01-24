# Comparisons

## which terminal

Tier |
S    | alacritty - kitty - Gnome Term
A    | iTerm2 - WezTerm
B    | macOS term
C    | Wrap

### iTerm

- most popular
- macOS only
- GPU accelerated Metal
- Slower
- Native system support (swift, notifications...)
- official highlights: Middle Button Paste, Text Selection, Split Panes, Hotkey Window, Regular Expression Search, Autocomplete, Focus Follows Mouse, Notification Center Support, Triggers, Tmux Integration, Coprocesses, Inline Images, Password Manager, Python Scripting API, Status Bar

### [Alacritty](https://alacritty.org)

`$ brew install --cask alacritty`
[GitHub](https://github.com/alacritty/alacritty)

- Fast (gpu-accelerated(Open GL, not Metal))
- Linux, BSD, macOS and Windows.
- minimalist and cleaner (has all the features that you need, and none of those you don't need)
- no tabs, no ligature support
- wrote in Rust
- error checkers
- written in Rust (don't work well on old machines)

### [Kitty](https://github.com/kovidgoyal/kitty/)

- fast (GPU based)
- crazy amount of config
- built-in tabs and windows multiplexing (like tmux)
  - Kitty offers features that TMUX doesn't such as displaying images, but overall: basic mutiplexer = Kitty; advanced multiplexer = TMUX.
- built in sexy prompts
- Powerful font manager, supports ligature fonts
- the apple of terms, some things will only works on kitty.
- Super good documentation (even in the config file)
- Can run nested tmux sessions and vim instances and jump about the place without redraw lag.
- written in Python
- Linux, macOS, Free BSD

> [!IMFORMATION]
> features: Display images, Interactive Unicode characters input, Supports true color, text formatting features, Tiling of multiple windows and tabs, Single config file, Hyperlink clicks, Mouse support, Multiple copy/paste buffers like in Vim

### [WezTerm](https://wezfurlong.org/wezterm/)

- Linux, macOS, Windows 10 and FreeBSD
- Multiplex terminal panes, tabs and windows on local and remote hosts, with native mouse and scroll back, Ligatures, Color Emoji and font fallback, with true color and dynamic color schemes, Hyperlinks

### [Wrap](https://docs.warp.dev/getting-started/readme)

- hated by many (telemetry + need an account)
- but also loved by many
- Rust + Metal
- GPU accelerated

## Browser

Tiers| 
S |  
A |Firefox Edge Brave Orion
B | Safari Chromium Duck
C  |Chrome Opera

## Shell
bash
zsh

#### ~/.bash_profile:

td;lr: for configurations that should only be run once during the login process.

This file is executed for login shells. A login shell is typically the first shell that starts when you log in to the system, either through the console or remotely.
It is read and executed only during the login process.
Commonly used for setting environment variables, initializing shell variables, and running commands that should be executed once when you log in.
On macOS, the Terminal app starts a login shell by default.

#### ~/.bashrc:

td;lr:  for configurations that are specific to interactive, non-login shells.

This file is executed for interactive, non-login shells. It is run each time you open a new terminal window or start a new non-login shell.
It is used for setting shell options, defining aliases, and other configurations specific to interactive shells.
It is not executed during the login process, so any commands or configurations in ~/.bashrc won't be applied in login shells by default.
On macOS, when a new terminal window is opened, it typically starts an interactive, non-login shell, so ~/.bashrc is often used for user-specific configurations.

## Vim

Tier |
S    |
A    | nvim
B    | Vim
C    | 