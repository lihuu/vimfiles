if has('gui_macvim')
  set nocompatible
  syntax on
  set nu
  syntax enable
  colorscheme onedark
  set ts=4
  set shiftwidth=4
  set expandtab
  set ch=2		" Make command line two lines high
  set mousehide		" Hide the mouse when typing text
  set fdm=marker
  set macligatures
  set guifont=BlexMono\ Nerd\ Font:h18
  set t_Co=256
  set background=dark
  set transparency=10
  set autoread
  map <S-Insert> <MiddleMouse>
  map! <S-Insert> <MiddleMouse>
endif

if has('gui_gtk3')
  set guifont=BlexMono\ Nerd\ Font\ Mono:h18
endif
