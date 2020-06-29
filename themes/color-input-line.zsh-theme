# Refer https://misc.flogisoft.com/bash/tip_colors_and_formatting for the ANSI color codes.

local user_color=026
local dir_color=130
local git_branch_color=010
local line_color=241
local input_color=220

# Uncomment the following line to hide the virtual environment name.
# export VIRTUAL_ENV_DISABLE_PROMPT=1

# Number of columns to leave free for virtual environment name. You can set this
# so that the dashes cover the width of the screen.
local buffer=11

# User details in green, bold
local user='%B$FG[${user_color}]%}%n@%m%{$reset_color%}'
# Directory details in cyan, bold
local dir='%B$FG[${dir_color}]%~%{$reset_color%}'
# git branch details in green
local git_branch='$FG[${git_branch_color}]$(git_prompt_info)%{$reset_color%}'

# Error message on command returning non-zero exit code
error_msg="\e[0;31mCommand failed"

# Prints the separator line between two prompts, adjusted for the length of the
# name of the current virtual environment.
print_line()
{
  # Refer the 88/256 colors section on this webpage: https://misc.flogisoft.com/bash/tip_colors_and_formatting
  dash='\e[38;5;${line_color}m-'
  for i in {1..$((COLUMNS-buffer))}
  do
    echo -ne $dash
  done
}

# Refer: https://stackoverflow.com/questions/263890/how-do-i-find-the-width-height-of-a-terminal-window
PROMPT="$(print_line)
${user}:${dir}:${git_branch}
$ $FG[${input_color}]"

# Resetting color to default white.
preexec()
{
  echo -ne "\e[0m"
}

# Printing error message if command failed.
precmd()
{
  # Command failed
  if [ $? -ne 0 ];
  then
    echo "${error_msg}"
  fi
}
