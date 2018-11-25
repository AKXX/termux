![myandroid](https://user-images.githubusercontent.com/45251660/48910563-18973a00-ee92-11e8-95e1-d3ddde8ed085.gif)

```



                              
▗▄▄▄▖                         
▝▀█▀▘                         
  █   ▟█▙  █▟█▌▐█▙█▖▐▌ ▐▌▝█ █▘
  █  ▐▙▄▟▌ █▘  ▐▌█▐▌▐▌ ▐▌ ▐█▌ 
  █  ▐▛▀▀▘ █   ▐▌█▐▌▐▌ ▐▌ ▗█▖ 
  █  ▝█▄▄▌ █   ▐▌█▐▌▐▙▄█▌ ▟▀▙ 
  ▀   ▝▀▀  ▀   ▝▘▀▝▘ ▀▀▝▘▝▀ ▀▘
                              
                              


bin       > System Automation Scripts
git       > Global git config and aliases
mpd       > music player daemon setup
mutt      > minimal mail server setup
ncmpcpp   > ncurses mpc++ ui/color settings
ranger    > file manager
tmux      > terminal multiplexer 
vim       > customized status bar
zsh       > zshell settings, aliases and custom prompts
```

### Table of Contents

- [Introduction](#Dotfiles)
- [Managing](#Managing)
- [Installation](#Installation)
- [How it works](#How-it-works)
- [My Shell](#My-Shell)
- [My Mail](#My-Mail)
- [Vim](#Vim)

# Dotfiles
In the Unix world, programs are commonly configured in two different ways, via shell arguments or text based configuration files. Programs with many options like Windows Managers or text editors are configured on a per-user basis with files in your home directory `~`. In Unix like operating systems, any file or directory's name that starts with a period or full stop character is considered hidden, and in a default view will not be displayed. Thus the name dotfiles

It's been said of every console user:
> _"You're your dotfiles"_.

Since they dictate how your system will look and functions, to many users these files are very important, and need to be backup up and shared. People who create custom themes have the added challenge of managing multiple versions of them. I have tried many organization techniques. And just take my word for it when I say, keeping a git repo in root of your home directory is a bad idea. I've written custom shell scripts for moving or symlinking files into place. There are even a few dotfiles managers, but they all seem to have lots of dependencies. I knew there had to be a simple tool to help me. 

# Managing 
I manage mine with [gnu stow](https://www.gnu.org/software/stow/), a free, portable, lightweight symlink farm manager. This allows me to keep a versioned directory of all my config files that are virtually linked into place via a single command. This makes sharing these files among many users (root) and computer is super simple. And doesn't clutter your home directory with version control files.

# Installation
Stow is available for all Linux and most other Unix like distributions via your package manager.

In termux, you can install it by typing,

- `pkg install stow`

# How it works
By default the stow command will create symlinks for files in the parent directory of where you execute the command. So my dotfiles setup assumes this repo is located in your home directory `~/.cfg`. And all stow commands should be executed in that directory. Otherwise you'll need to use the `-d` flag with the repo directory location.

To install most of my configs, you execute the stow command with the folder name as the only argument.

To install my **mutt** files, use the command:

`stow mutt`

This will symlink files to `~/.config/mutt` and various other places.

# My Mail
I use minimalist apps even on my powerful machines. One of the example is my mail setup. I use mutt for daily mail usage. I don't use google mail, just added this configuration for termux users so they can also enjoy it. Just do these steps and you'll be okay to use mail in your terminal.
First of all you have to enable [less secure apps](https://myaccount.google.com/lesssecureapps) in your google account.

- `git clone https://github.com/AKXX/termux.git ~/.cfg`
- `cd ~/.cfg`
- `pkg install mutt`
- `pkg install stow`
- `stow mutt`
- `bash ~/.config/mutt/muttwizard`
- `stow bin bash`

You can send me a mail anytime from terminal. Just type ak 'your message' and hit enter. Don't forget to use commas `" "`.
