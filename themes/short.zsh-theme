# Refer https://misc.flogisoft.com/bash/tip_colors_and_formatting for the ANSI/VT100 control sequences

local dir_color=130
local input_color=220

# Uncomment the following line to hide the virtual environment name.
# export VIRTUAL_ENV_DISABLE_PROMPT=1

# Error message on command returning non-zero exit code
error_msg="\e[0;31mCommand failed"

PROMPT="$FG[${dir_color}]%.$FG[${input_color}] > "

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
