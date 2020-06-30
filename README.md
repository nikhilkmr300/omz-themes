# omz-themes
A collection of themes for Oh My Zsh.

Oh My Zsh is framework for managing Z shell (Zsh). You can find their repository [here](https://github.com/ohmyzsh/ohmyzsh).

I was playing around with customizing my terminal and creating some cool custom themes to pimp it up.
This repository contains some of the shell scripts I wrote to generate the themes.

## color-input
<img src=https://github.com/nikhilkmr300/omz-themes/blob/master/images/color-input.png width=640>

Features:
* Colored input to shell to easily differentiate it from the output of commands.
* Current git branch being checked out indicated at the end of the prompt.
* Option to keep/hide the virtual environment name.
* Prominent alert on command exiting with non-zero code.

## color-input-line
<img src=https://github.com/nikhilkmr300/omz-themes/blob/master/images/color-input-line.png width=640>

Similar to color-input, but with a dashed line separating successive prompts.

## matte-black-yellow
<img src=https://github.com/nikhilkmr300/omz-themes/blob/master/images/matte-black-yellow.png width=640>

Features:
Same as for color-input.

## matte-black-yellow-line
<img src=https://github.com/nikhilkmr300/omz-themes/blob/master/images/matte-black-yellow-line.png width=640>

Similar to matte-black-yellow, but with a dashed line separating successive prompts.

## retro-term
A theme with a CRT terminal feel.

<img src=https://github.com/nikhilkmr300/omz-themes/blob/master/images/retro-term.png width=640>

Notes:
If you want to get the full retro experience,
include `export LSCOLORS=cxcxcxcxcxcxcxcxcxcxcx` in your .zshrc file to make the output of `ls` green as well.
You could also play around with the Preferences in Terminal or iTerm or the settings in any terminal of your choice to pimp the look up further.

## short
If long prompts annoy you, this theme is for you!
It does away with the long path after the username, and retains only the basename of the current working directory in the prompt.

<img src=https://github.com/nikhilkmr300/omz-themes/blob/master/images/short.png width=640>

# Installation
You first need to have Z shell and Oh My Zsh installed.

You can install Zsh on MacOS using `brew install zsh` or `sudo apt install zsh` on Ubuntu.

You can install Oh My Zsh using the instructions in their repository (link above).

Make sure you install [Powerline Fonts](https://github.com/powerline/fonts) so that the fonts render correctly.

Once you download the theme of your choice from the themes directory,
move it to the custom/themes directory in your Oh My Zsh installation on your machine
(it's a hidden folder, so use `ls -a` to find it, it's likely in ~/.oh-my-zsh).

All you need to do then is add the name of the theme (without the zsh-theme extension) to the .zshrc file at ~.

Run `source ~/.zshrc` or open a new Terminal window, and the theme should be there.
