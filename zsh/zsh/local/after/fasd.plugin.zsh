if [ "$(command -v fasd)" ]; then
  eval "$(fasd --init auto)"
  alias v='f -e vim'
  alias o='a -e xdg-open'
fi
