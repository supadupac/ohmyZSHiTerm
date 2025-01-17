# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/chrislee/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME = ""
# ZSH_THEME="typewritten"
ZSH_THEME="fishbone++"
FISHBONEPP_LINE_MODE="singleline"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

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
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
git
autojump
bgnotify
catimg
composer
docker-compose
drush
extract
frontend-search
history
iterm2
jsontools
macos
npm
rand-quote
symfony2
themes
web-search
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias ls="ls -la"

# Custom DDEV Commands
alias dd="ddev"
alias dd-start="zsh ~/.chrislee-scripts/ddev-start.zsh"
alias dd-stop="zsh ~/.chrislee-scripts/ddev-stop.zsh"
alias dd-d9-reset="zsh ~/.chrislee-scripts/ddev-d9-db-reset.zsh"
devel () { ddev exec drush en devel
ddev exec drush en devel_generate }
alias dd-d9-config-reset="zsh ~/.chrislee-scripts/ddev-config-reset.zsh"

# Local Drush Commands
alias d="ddev exec drush"
alias d-cbs="ddev exec drush en cbs_migrations -y"
alias d-entites="zsh ~/.chrislee-scripts/ddev-d9-list-entities.zsh"
alias trial="zsh ~/.chrislee-scripts/trial.zsh"

# Openning websites
alias cbsd9dest="open https://cbsd9dest.dev/user"
alias cbsd7src="open https://cbsd7src.dev/user"
alias gitd9="open https://github.umn.edu/CBS-RLT/cbs_umn_edu"
alias cbsd9="open https://d9.cbs.umn.edu/user"
alias cbsd7="open https://cbs.dev.umn.edu/saml_login"
alias cbsd9dev="open https://cbs-d9.dev.umn.edu/saml_login"
alias gdrivetestnodes="open https://docs.google.com/spreadsheets/d/1hevnRjh0UbqgfpJ3N2syjceYCszgTuF7qUz8W-YsMEM/edit#gid=0"
alias mondaycbssite="open https://cbs-rlt-team.monday.com/boards/503813320"
alias umn-d-management="open https://drupalmanagement.umn.edu"

# Opening and starting services and programs
alias finder="open ."
makemeadmin () { open -a "Make Me Admin" }
datagrip () { open -a "Datagrip" }
anyconnect () { open -a "Cisco AnyConnect Secure Mobility Client" }
alias safari="open -a Safari"
alias workonmigrations="zsh ~/.chrislee-scripts/work-on-migrations.zsh"
idea-zsh () { idea --wait ~/.zshrc }
alias idea-scripts="idea ~/Documents/Developer/scripts"

# Closing or stopping programs
quit-docker () { open -a "Close Docker" }

# Open files in programs
code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}

# Syntax ZSH Help
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
eval $(thefuck --alias)

# File Management
alias bu-terminal="zsh ~/.chrislee-scripts/bu-terminal.zsh"
