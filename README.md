
## This project contains scripts to install or uninstall exa.

exa website:    https://the.exa.website/

exa repository: https://github.com/ogham/exa

## Installing Exa
If you don't already have the repository, get the scripts by executing:

    git clone https://github.com/ASHERH4X/exa-linux-install.git
    cd exa-linux-install

Once you have the repo, install exa by executing:

    sh install-exa.sh

To confirm exa was installed properly, check its version by executing:

    exa -v

If you see something like **exa v0.8.0** then you're good to go!

## Uninstalling exa
Super easy, execute:

    sh remove-exa.sh

## Usage w/alias example
Recommended: replace the **ls** command with an alias to exa.

Example addition to .bashrc:

    alias ls="exa --group-directories-first --time-style=long-iso -l"
    export ls
So then when you type **ls**, you get:

![
](https://github.com/ASHERH4X/exa-linux-install/blob/master/alias-screenshot.png?raw=true)
