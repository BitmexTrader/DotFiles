
# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/bitcointeader/local/bin:$PATH
export PATH=~/.npm-global/bin:$PATH
 #Path to your oh-my-zsh installation.
export ZSH="/home/bitcointeader/.oh-my-zsh"
export NNN_USE_EDITOR=1
export NNN_DE_FILE_MANAGER=Files

export RANGER_LOAD_DEFAULT_RC= false  
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes

ZSH_THEME="powerlevel10k/powerlevel10k"



# POWERLEVEL10K_MODE="nerdfont-complete"
# POWERLEVE10LK_DISABLE_RPROMPT=true
# POWERLEVEL10K_PROMPT_ON_NEWLINE=true
# POWERLEVEL10K_MULTILINE_LAST_PROMPT_PREFIX="▶ "
# POWERLEVEL10K_MULTILINE_FIRST_PROMPT_PREFIX=""
# POWERLEVEL10K_RIGHT_PROMPT_ELEMENTS=(status virtualenv)
# POWERLEVEL10K_CUSTOM_BITMEXTRADER_ICON="echo <unicode logo icon> "
# POWERLEVEL10K_CUSTOM_BITMEXTRADER_ICON_BACKGROUND=069
# POWERLEVEL10K_CUSTOM_BITMEXTRADER_ICON_BACKGROUND_FOREGROUND=015
# POWERLEVEL10K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs history time virtualenv)
# POWERLEVEL10K_LEFT_PROMPT_ELEMENTS=(custom_bitmextrader_icon context vcs)
# Set list of themes to pick from when loading at random
#
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
 export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
 ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
 COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  gitfast
  bundler
  dotenv
  web-search
  tmux
  zsh-autosuggestions
  fancy-ctrl-z
  python
  virtualenv
  vi-mode
  colored-man-pages
  copydir
  copybuffer
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='nvim'
 else
   export EDITOR='vim'
 fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

# Aliases
# zsh aliases
alias zshconfig="nvim ~/.zshrc"
alias ohmyzsh="nvim ~/.oh-my-zsh"

# Vim to Nvim
alias vi="nvim"
alias vim="nvim"
#Configs/DotFiles
alias int="nvim ~/.config/nvim/init.vim"
alias rc="nvim ~/.config/ranger/rc.conf"

# Desktop alias
alias cookbook"nnn ~/Desktop/CookBooks"
alias todo="nvim ~/Desktop/TODOS/ToDayToDo.txt"

#Repositories
#Github Dotfiles README.md
alias README="nvim ~/Desktop/MyDotfiles/README.md"

#Teminal File mangers
#NNN open configuration
#alias nnn "nnn -c N0"

if [ "$TMUX" = "" ]; then tmux; fi
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh
