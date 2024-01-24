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
- best font rendering
- wrote in Rust
- error checkers
- written in Rust (dont work well on old machines)

### [Kitty](https://github.com/kovidgoyal/kitty/)

- fast (GPU based)
- crazy amount of config
- Supports ligature fonts
- the apple of terms, some things will only works on kitty.
- Super good documentation (even in the config file)
- Can run nested tmux sessions and vim instances and jump about the place without redraw lag.
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

## Vim

Tier |
S    |
A    | nvim
B    | Vim
C    | 