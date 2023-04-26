export PATH=$PATH:~/AppData/Local/hyper/app-2.0.0/resources/bin:~/bin

# PS1="\e[1;33m\u\e[0;33m@\h \e[0;35min \e[1;35m\W\n\e[1;31m\$>\e[0m "

if [ ~/.bash_aliases ]; then
  source ~/.bash_aliases
fi

# starship init bash
__main() {
  local major="${BASH_VERSINFO[0]}"
  local minor="${BASH_VERSINFO[1]}"

  if ((major > 4)) || { ((major == 4)) && ((minor >= 1)); }; then
    source <(/c/Users/Hayde/scoop/shims/starship.exe init bash --print-full-init)
  else
    source /dev/stdin <<<"$(/c/Users/Hayde/scoop/shims/starship.exe init bash --print-full-init)"
  fi
}
__main
unset -f __main

echo
scoop update

