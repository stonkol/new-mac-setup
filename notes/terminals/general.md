## Terminal Commands 📼

 <img src="https://media0.giphy.com/media/Rd7pEbE7rjZz8vySuU/200w.webp?cid=ecf05e4785rhz7hf3ft9pkpaq2f0gd463xmanfhaw74tfu3s&rid=200w.webp&ct=g" width="496" />

### SIMPLE CMDS

- `clear`

  `man` manual

  `df -h` how much space is in your disk

  `whoami` tell you the user you are

  `ps` show all the processes in your mac

  `ps -ax`

  `top` showing your processes in realtime

  `top -o rsize` showing your memory apps in realtime

  `bash` change to

  `zsh` change to

  `uptime` how much time has your mac wotking

  `history` command history

  ctrl + C to exit

### FILES

`cd` go to directory

`ls` list current folder files

`open` open a file

`cp` copy files

`ditto` better version of copy files

`nano` edit a file

`mv` move files

`diff` compare files

### INTERNET

1. `ping` check if the website is working

1. `ifconfig` know your ip addres

1. `ifconfig en0 | grep inet | awk ‘{ print $2 }’` only show ipv6 and 4

1. `traceroute [website]` trace the route to go to a website

1. `dig [website]` dig in DNS

1. `curl [file]` download a file from the internet

### SECURITY

1. [Allow Apps from Anywhere (Gatekeeper](http://osxdaily.com/2016/09/27/allow-apps-from-anywhere-macos-gatekeeper/))
   `sudo spctl --master-disable`
1. Delete all the download history (from any app that lets you download files. This can include torrents, cat photos, porn—anything.)
   **`sqlite3 ~/Library/Preferences/com.apple.LaunchServices.QuarantineEventsV* 'delete from LSQuarantineEvent'`**
1. Use Touch ID for sudo
   [https://youtu.be/qOrlYzqXPa8?t=644](https://youtu.be/qOrlYzqXPa8?t=644)
   `sudo nano /etc/pam.d/sudo`

### Homebrew

1. Example usage:

   brew search TEXT|/REGEX/

   brew info [FORMULA|CASK...]

   brew install FORMULA|CASK...

   brew update

   brew upgrade [FORMULA|CASK...]

   brew uninstall FORMULA|CASK...

   brew list [FORMULA|CASK...]

1. Troubleshooting:

   brew config

   brew doctor

   brew install --verbose --debug FORMULA|CASK

1. Contributing:

   brew create URL [--no-fetch]

   brew edit [FORMULA|CASK...]

1. Further help:

   brew commands

   brew help [COMMAND]

   man brew [link](https://docs.brew.sh)

### FUN

- Mac speech
  `say [put the phrase]`
- 🔋BEEP → Plug the Power
  iPhone charging sound

  ```powershell
  defaults write com.apple.PowerChime ChimeOnAllHardware -bool true; open /System/Library/CoreServices/PowerChime.app
  ```

- SCREENSHOOTS
  Screenshot jpg(or tiff, gif)

  ```powershell
  defaults write com.apple.screencapture type jpg;killall SystemUIServer
  ```

  Create a New Default Name For Screenshots

  ```powershell
  defaults write com.apple.screencapture name "capturajun"
  ```

- Kill The Dashboard

  ```powershell
  defaults write com.apple.dashboard mcx-disabled -boolean TRUE
  ```

- Stay awake while using the terminal
  `caffeinate`
