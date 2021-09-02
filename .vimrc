let mapleader=","

set number
set ruler
set laststatus=2
set hlsearch
set ttimeoutlen=0

" Search while typing
set incsearch
filetype on
syntax on
filetype indent on
filetype plugin on
" set wildmode=list:longest
set wildmenu
set showcmd

" enable omnicompletion
set omnifunc=syntaxcomplete#Complete

" backspace not picking up eol, etc.
set backspace=indent,eol,start

" Beging scrolling 5 lines from the top/bottom of screen.
set scrolloff=5

" Clear highlighting, and redraw screen
:nnoremap <C-l> :nohl<CR><C-l>

" Map F2 to hide numbers and unfold
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>

" Clear the search buffer when hitting return
nnoremap <CR> :nohlsearch<CR>

" Quick command mode
imap ;j <Esc>

" Rotate to next window, counter-clockwise
map wwr <C-w>W
" Rotate to next window, clockwise
map wr <C-w>w
" <leader>tn opens a new tab.
map <leader>tn :tabnew<CR>
" <leader>tc closes the current tab
map <leader>tc :tabclose<CR>

" Quick-toggle for :set list!
nmap <leader>l :set list!<CR>

" Keep visual block selected after indentation.
vnoremap < <gv
vnoremap > >gv

" Trailing whitespace detection and purging
match ErrorMsg '\s\+$'
nnoremap <leader>rtw :%s/\s\+$//e<CR>

" Replace all occurances of current word.
nnoremap <leader>s :%s/\<<C-r><C-w>\>/

" Color Scheme
colorscheme elflord
set statusline=%t\ %h%m%r%y%=[%n]\ %c,%l/%L\ %P

"""
" ctrlp
"""
set runtimepath^=~/.vim/bundle/ctrlp.vim
set wildignore+=*/vendor/bundle/*,*/tmp/*,*.so,*.swp,*.zip,*.orig

"""""""
" vim-go
"""""""
let g:go_auto_type_info = 1           " Automatically get signature/type info for object under cursor
let g:go_template_autocreate = 0      " Don't bother with auto-filling files with templates. Use snippets

"""""
" ALE
"""""
let g:ale_linters = {}
let g:ale_linters.go = ['go build', 'gfmt', 'go vet']
let g:ale_linters.rust = ['cargo', 'rls', 'rustc', 'clippy', 'rustfmt']
let g:ale_open_list = 1
let g:ale_list_window_size = 5
let g:ale_rust_cargo_use_clippy = executable('cargo-clippy')
let g:ale_set_highlights = 0
let g:ale_set_loclist = 0
nmap <silent> <leader>p <Plug>(ale_previous_wrap)
nmap <silent> <leader>n <Plug>(ale_next_wrap)

"""
" rust.vim
"""
let g:rustfmt_autosave = 1

"""
" Snippets
"""
let g:UltiSnipsExpandTrigger="<c-s>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsEditSplit="horizontal"

"""
" Put these lines at the very end of your vimrc file.
"""
"
" " Load all plugins now.
" " Plugins need to be added to runtimepath before helptags can be generated.
packloadall
" " Load all of the helptags now, after plugins have been loaded.
" " All messages and errors will be ignored.
silent! helptags ALL
