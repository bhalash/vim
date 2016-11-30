""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Keybinds
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let mapleader = "\<space>"

" Use <Tab> to cycle back and forth through windows.
nnoremap <Tab> <C-W>w
nnoremap <S-Tab> <C-W>W

" <c-w> is difficult for me to reach given my handedness and keyboard.
nmap <leader><space> <C-w>

" Disable the keybind to access ex mode.
nnoremap Q <Nop>

" Split file.
nmap <silent><leader>v <c-w>v<c-w>l

" Toggle spellchecking.
nmap <leader>sp :setlocal spell!<CR>

" Toggle highlighted results.
nmap <silent><bs> :nohlsearch<CR>

" Use s and S to quickly search and replace in content: sfoo/bar Sfoo/bar.
nmap s :s,,<left>
nmap S :%s,,<left>

" Toggle line numbering style.
nmap <silent><leader>r :set relativenumber!<CR>

" Reset current file to its last committed state.
nmap <leader>gr :!git checkout %<CR>

" Empty line of content without removing line ending.
nmap <leader>dl :s/.*//<CR> :noh<CR>

" Strip trailing whitespace from the file.
nmap <leader>W :%s/\s\+$//<CR>:let @/=''<CR> :noh<CR>

" Delete all leading spaces on a line.
nmap <silent><leader>d<space> :s/^\s\+//<CR> :noh<CR>

" Quickly yank all lines in the file.
nmap <leader>yy :%y+<CR>

" Replace all lines in the file with the contents of the clipboard.
nmap <silent><leader>rp gg"_dGVp

" Fix the entire indentation of a file according to your tab rules.
nmap <leader>ind gg=G

" Open and close new tab.
nmap <silent><leader>tt :tabnew<CR>:Startify<CR>
nmap <silent><leader>tw :tabclose<CR>

" Progress forward and backwards with multiple panes open.
nmap <silent><leader>r :prev<CR>
nmap <silent><leader>n :n<CR>

" Stop * searches jumping word.
nnoremap * :keepjumps normal! mi*`i<CR>

" Format JSON in buffer.
nmap <silent><leader>js :%!python -m json.tool<CR>

" Replace rocket-style (=>) hash keys in Ruby with :
nmap <leader>rr :%s/:\([^=,'"]*\) =>/\1:/ <CR>

" Toggle quickfix window.
nnoremap <leader>q :call QuickfixToggle()<CR>

" Escape < and > in HTML
nnoremap <leader>es :s/</\&lt;/e \| :s/>/\&gt;/e <CR>

" Set colorcolumn at current cursor column.
nnoremap <silent><leader>ch :execute 'set colorcolumn=' . col('.')<CR>

" Set and clear colorcolumn.
nnoremap <silent><leader>cc :set colorcolumn=<CR>
nnoremap <silent><leader>c0 :set colorcolumn=<CR>
nnoremap <silent><leader>c8 :set colorcolumn=80<CR>
nnoremap <silent><leader>c1 :set colorcolumn=120<CR>

" Close all buffers and tabs and open Startify.
nnoremap <silent><leader>ca :only \| :tabonly \| :Startify<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin Keybinds
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Startify
nmap <silent><leader>st :Startify<CR>

" GitGutter
nmap <leader>gg :GitGutterToggle<CR>

" CtrlP
nmap <leader>5 :CtrlPClearCache<CR>

" Goyo
nmap <silent><leader>go :Goyo<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ale
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

nnoremap <silent><leader>n :lne<CR>
nnoremap <silent><leader>b :lpr<CR>
nnoremap <silent><leader>l :lop<CR>
nnoremap <silent><leader>j :lcl<CR>

