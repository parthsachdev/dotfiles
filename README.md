## My dotfiles
Dotfiles are all ditterent configuration files on your Linux system. This repository provides a way to track the history of your configuration files and store them remotely so that you can install these files in a new system and customize as per your preferences.

## Inspiration
There are many ways to store dotfiles and manage them. I've used the way described by @durdn in the Atlassian website. You can checkout his documentation [https://www.atlassian.com/git/tutorials/dotfiles](here).

## Installation
```bash
curl -Lks https://raw.githubusercontent.com/parthsachdev/dotfiles/master/dtf-install | /bin/bash
```

## Usage
You can then use the customized git command, `dtf`, which uses your `$HOME` as the working tree and `$HOME/.dtf` as the git directory, to manage the configuration files. This command is aliased and stored in the `.bash_aliases` file. After installation your existing configuration files in your home folder, that exists in this repo as well will be backed up in a separate directory.


