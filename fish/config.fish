# List of function to use for fish

# Prompt
function fish_prompt
  set last_status $status

  set_color -o normal
  echo -n (set_color cyan)(prompt_pwd) (set_color red)'❯'(set_color yellow)'❯'(set_color blue)'❯ '
  set_color normal

end

function fish_right_prompt
  set -l last_status $status

  echo -n (set_color blue)'❮'(set_color yellow)'❮'(set_color red)'❮ '
  set_color -o normal
  __informative_git_prompt
end

function fish_title
  echo $_ ' '
  pwd
end

function fish_greeting
  title
end


function sudo
    if test "$argv" = !!
        eval command sudo $history[1]
    else
        command sudo $argv
    end
end

set -xU LESS_TERMCAP_md (printf "\e[01;31m")
set -xU LESS_TERMCAP_me (printf "\e[0m")
set -xU LESS_TERMCAP_se (printf "\e[0m")
set -xU LESS_TERMCAP_so (printf "\e[01;44;33m")
set -xU LESS_TERMCAP_ue (printf "\e[0m")
set -xU LESS_TERMCAP_us (printf "\e[01;32m")

set SASS_LIBSASS_PATH '/usr/local/lib/libsass'

set fish_color_param 427b58

alias xup="xrdb -load ~/.Xresources"
alias ls="ls -lG"
alias tree="tree -C"

# Git shortcuts
alias gits="git status -s"
