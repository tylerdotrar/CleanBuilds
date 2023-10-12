### 2Clean || Clean with a hint of Agnoster
### Author: Tyler McCann (@tylerdotrar)

# Set prompt to red if user is root
if [ $UID -eq 0 ]; then NCOLOR="red"; else NCOLOR="white"; fi
CURRENT_BG='NONE'

# SEGMENT_SEPARATOR is unicode for a triangular arrow lookin guy

# Option 1: Fat Triangular Arrow
#() {
#  local LC_ALL="" LC_CTYPE="en_US.UTF-8"
#  SEGMENT_SEPARATOR=$'\ue0b0'
#}

# Option 2: Small Skinny Arrow
SEGMENT_SEPARATOR='➤'

# Simple function to print the arrow (SEGMENT_SEPARATOR) in red or white.
prompt_error() {
  [[ $RETVAL -ne 0 ]] && CURRENT_BG='red'
  echo -n " %{%k%F{$CURRENT_BG}%}$SEGMENT_SEPARATOR%{%f%}"
  CURRENT_BG=''
}

# Add arrow in front of prompt; adjust color depending on error output.
build_prompt() {
  RETVAL=$?
  prompt_error
}

# %B/b	= Start/End Bold
# %n	= Username
# %?	= Last Command Status
# %     = Uh... tons of other stuff

# Immediate Left Side of Prompt
PROMPT='%{%f%b%k%}$(build_prompt) %{$fg[$NCOLOR]%}%B%n%b%{$reset_color%}:%{$fg[yellow]%}%B%c/%b%{$reset_color%} $(git_prompt_info)%(!.#.$) '

# Far Right Side of Prompt
RPROMPT='[%*]'

# Adjusted Git Theming
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[cyan]%}(%{$fg_no_bold[$NCOLOR]%}%B"
ZSH_THEME_GIT_PROMPT_SUFFIX="%b%{$fg_bold[cyan]%})%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[green]%}✘"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[red]%}✘"

# Unchanged: LS colors, made with https://geoff.greer.fm/lscolors/
export LSCOLORS="Gxfxcxdxbxegedabagacad"

# Adjusted LS_COLORS
export LS_COLORS="di=36;1:ln=35:so=32:pi=33:ex=31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43"
