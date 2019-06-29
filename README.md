
## This project contains scripts to install or uninstall exa.

exa website:    https://the.exa.website/
exa repository: https://github.com/ogham/exa

## Preface
Exa is available in many distributions and is well explained on its website, however, in some distributions it is unavailable, and this repo simply installs it in a matter of 5 minutes rather than relying on other package managers.  This repo automatically pulls the very latest release, too.

It is first recommended to  attempt installing exa in the traditional manner, so consider this a backup method.

## Git / Novice Note!
Like any repo here on GitHub, you must have **git** installed in order to make this work, other than that, only **curl** it required. Both can be installed in just one line. It's as simple as this...

    apt update && apt upgrade -y
    

## Installing Exa
You simply need git to install exa. If you are a novice at this, make sure to follow the section above this one first.
Once you have git and everything is updated, run these commands...

    git clone https://github.com/ASHERH4X/exa-linux-install.git
    cd exa-linux-install
    sh ./install-exa.sh

To confirm exa was installed properly, check its version by executing:

    exa -v

If you see something like **exa v0.8.0** then you're good to go!

## Uninstalling exa
Super easy, execute:

    sh ./remove-exa.sh

## Removing the Installation Scripts
Simply go up one directory, where, when you find the **exa-linux-install** folder listed, just remove it by typing

    rm exa-linux-install -r

## My Personal Favorite Usage of Exa (using an Alias)
Recommended: replace the **ls** command with an alias to exa.

Example addition to .bash_profile:

    alias ls="exa --group-directories-first --time-style=long-iso -l"
    export ls
So then when you type **ls**, you get:

![
](https://github.com/ASHERH4X/exa-linux-install/blob/master/alias-screenshot.png?raw=true)
