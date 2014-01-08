" Switching to [pathogen](https://github.com/tpope/vim-pathogen) and [sensible.vim](https://github.com/tpope/vim-sensible]
" and still keeping my most important settings.

execute pathogen#infect()

filetype plugin indent on

" Enable line numbers
set number

" Make tabs as wide as four spaces
set shiftwidth=4

" Enable syntax highlighting
syntax enable

" Set line width
set textwidth=79
" wrap lines that are longer than the length above, but don't split words
" and mark the continuation line with ...
set wrap
set lbr
set showbreak=…

" use [solarized theme](" https://github.com/altercation/vim-colors-solarized)
set background=dark
colorscheme solarized

" Highlight current line
set cursorline

" Ignore case of searches
set ignorecase

" Don’t reset cursor to start of line when moving around.
set nostartofline

" Don’t show the intro message when starting Vim
set shortmess=atI

" Show the filename in the window titlebar
set title

" Strip trailing whitespace (,ss)
function! StripWhitespace()
	let save_cursor = getpos(".")
	let old_query = getreg('/')
	:%s/\s\+$//e
	call setpos('.', save_cursor)
	call setreg('/', old_query)
endfunction
noremap <leader>ss :call StripWhitespace()<CR>

" highlight long lines according to http://stackoverflow.com/a/235970/323100
highlight OverLength ctermbg=darkred ctermfg=white guibg=#FFD9D9
match OverLength /\%81v.\+/

"spell checking and wrapping at 72 for commit messages, according to
"http://robots.thoughtbot.com/post/48933156625
autocmd Filetype gitcommit setlocal spell textwidth=72
