local current_time_iso8601='$(date +"%Y-%m-%dT%H:%M:%S")'
export ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}"
export ZSH_THEME_GIT_PROMPT_SUFFIX=" %{$reset_color%}"
export PROMPT="╭ ${user_host} ${current_dir} ${rvm_ruby} ${git_branch} \$BUNDLE_GEMFILE (${current_time_iso8601})
╰ %B$%b "

export CDPATH="$CDPATH:$HOME/Git/Private"
export CDPATH="$CDPATH:$HOME/Git/Public"
export CDPATH="$CDPATH:$HOME/Git/Personal"
export CDPATH="$CDPATH:$HOME/.homesick/repos"

export PATH="$PATH:$HOME/.personal/bin" # Make personal dotfiles scripts available

alias gti=git
alias tig=git
alias igt=git
alias tit=git
alias norg="gron --ungron"
alias ungron="gron --ungron"

# From a PeepCode video
take() {
  mkdir -p "$1"
  cd "$1"
}

# No more cd ../../../.. but up 4
# From http://serverfault.com/a/28649/22593
up() {
  local d=""
  limit=$1
  for ((i=1 ; i <= limit ; i++))
    do
      d=$d/..
    done
  d=$(echo $d | sed 's/^\///')
  if [ -z "$d" ]; then
    d=..
  fi
  cd $d
}
