# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Use powerline
USE_POWERLINE="true"
# Has weird character width
# Example:
#    is not a diamond
HAS_WIDECHARS="false"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
# Not supported in the "fish" shell.
(cat ~/.cache/wal/sequences &)

# Alternative (blocks terminal for 0-3ms)
cat ~/.cache/wal/sequences

# To add support for TTYs this line can be optionally added.
source ~/.cache/wal/colors-tty.sh


# source $ZSH/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Override all zsh-syntax-highlighting styles to white
ZSH_HIGHLIGHT_STYLES[command]='fg=white'
ZSH_HIGHLIGHT_STYLES[arg0]='fg=white'
ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=white'
ZSH_HIGHLIGHT_STYLES[reserved-word]='fg=white'
ZSH_HIGHLIGHT_STYLES[alias]='fg=white'
ZSH_HIGHLIGHT_STYLES[builtin]='fg=white'
ZSH_HIGHLIGHT_STYLES[function]='fg=white'
ZSH_HIGHLIGHT_STYLES[commandseparator]='fg=white'
ZSH_HIGHLIGHT_STYLES[default]='fg=white'
ZSH_HIGHLIGHT_STYLES[globbing]='fg=white'
ZSH_HIGHLIGHT_STYLES[history-expansion]='fg=white'
ZSH_HIGHLIGHT_STYLES[path]='fg=white'
ZSH_HIGHLIGHT_STYLES[precommand]='fg=white'
ZSH_HIGHLIGHT_STYLES[command-substitution]='fg=white'
ZSH_HIGHLIGHT_STYLES[option]='fg=white'
ZSH_HIGHLIGHT_STYLES[redirection]='fg=white'
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='fg=white'
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='fg=white'

# Make comments white too (optional)
ZSH_HIGHLIGHT_STYLES[comment]='fg=white'


ZSH_HIGHLIGHT_STYLES[command]='fg=white'