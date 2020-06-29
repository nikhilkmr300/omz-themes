# Refer https://misc.flogisoft.com/bash/tip_colors_and_formatting for the ANSI/VT100 control sequences

local user_color=010
local dir_color=010
local input_color=010

# Uncomment the following line to hide the virtual environment name.
# export VIRTUAL_ENV_DISABLE_PROMPT=1

# User details in green
local user='$FG[${user_color}]%n@%m'
# Directory details in green
local dir='$FG[${dir_color}]%~'

# Error message on command returning non-zero exit code
error_msg="\e[38;5;010mCommand failed"

PROMPT="${user} ${dir} > $FG[${input_color}]"

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
