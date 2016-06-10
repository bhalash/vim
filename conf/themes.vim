""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Appearance
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

function! s:gitgutter_reset()
  hi clear LineNr
  hi clear SignColumn
  hi GitGutterAdd           cterm=none    ctermbg=none    ctermfg=46      gui=none      guifg=#00ff00
  hi GitGutterChange        cterm=none    ctermbg=none    ctermfg=45      gui=none      guifg=#00d7ff
  hi GitGutterChangeDelete  cterm=none    ctermbg=none    ctermfg=11      gui=none      guifg=#ffff00
  hi GitGutterDelete        cterm=none    ctermbg=none    ctermfg=196     gui=none      guifg=#ff0000
endfunction

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Colorsbox // gui-first
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

function! s:colorsbox_patch()
  call s:gitgutter_reset()
  hi TabLineFill guifg=#ffffff guibg=#1d1f21
  hi TabLineSel guifg=#1d1f21 guibg=#ffffff
  let g:airline_theme='jellybeans'
endfunction

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Termschool // term-first
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

function! s:termschool_path()
  call s:gitgutter_reset()
  hi LineNr ctermfg=250 ctermbg=none guifg=#bcbcbc guibg=none
  hi CursorLine ctermfg=none ctermbg=238 guifg=none guibg=#444444
  let g:airline_theme='drjova'
endfunction

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Hybrid // term-first
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

function! s:hybrid_patch()
  call s:gitgutter_reset()
  hi Normal ctermbg=none
  hi ColorColumn ctermbg=88
  hi LineNr ctermfg=241
  hi CursorLine ctermbg=238
  hi CursorLineNr ctermbg=238
  hi Search ctermbg=179 ctermfg=232
  " hi IncSearch ctermfg=179 ctermbg=232
endfunction

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 256 Noir // term-first
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

function! s:256_noir_patch()
  call s:gitgutter_reset()
  hi CursorLine ctermbg=235 cterm=none
  hi Search ctermbg=33 ctermfg=250
  let g:airline_theme='hybrid'
endfunction

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Colorscheme Autocmd
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

autocmd! ColorScheme hybrid call s:hybrid_patch()
autocmd! ColorScheme 256_noir call s:256_noir_patch()
autocmd! ColorScheme termschool call s:termschool_patch()
autocmd! ColorScheme colorsbox-stnight call s:colorsbox_patch()
