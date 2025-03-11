:" Use [pathogen](https://github.com/tpope/vim-pathogen) and [sensible.vim](https://github.com/tpope/vim-sensible]
execute pathogen#infect()
filetype plugin indent on

" solarize color scheme
syntax enable
set background=dark
colorscheme solarized

" General settings
set number " Enable line numbers
set title " Show the filename in the window titlebar
set shortmess=atI " Don’t show the intro message when starting Vim
set encoding=utf-8  " The encoding displayed.
set fileencoding=utf-8  " The encoding written to file.

" Search
set ignorecase " Ignore case of searches

" Tab settings
set shiftwidth=4 " Make tabs as wide as four spaces
" Use tab instead of CTRL+N for autocomplete
inoremap <Tab> <C-n>

" Show “invisible” characters
set lcs=tab:▸\ ,trail:·,eol:¬
set list

" set font
set guifont=Inconsolata:h18

" Check spelling
set spell

" wrap lines at window border, don't split words and mark the continuation line with an ellipsis.
set wrap
set linebreak
set nolist
set showbreak=…
set scrolloff=3 " don't let the cursor touch the edge of the viewport
if exists('&breakindent')
set breakindent " Indent wrapped lines up to the same level
endif

" Cursor things
set cursorline " Highlight current line
set nostartofline " Don’t reset cursor to start of line when moving around.

" Strip trailing whitespace (,ss)
function! StripWhitespace()
	let save_cursor = getpos(".")
	let old_query = getreg('/')
	:%s/\s\+$//e
	call setpos('.', save_cursor)
	call setreg('/', old_query)
endfunction
noremap <leader>ss :call StripWhitespace()<CR>

"spell checking and wrapping at 72 for commit messages, according to
"http://robots.thoughtbot.com/post/48933156625
autocmd Filetype gitcommit setlocal spell textwidth=72

" vim-markdown: YAML-header https://stackoverflow.com/a/36414534/323100
let g:vim_markdown_frontmatter = 1

" Hotkeys
" NERDtree: https://github.com/scrooloose/nerdtree
map <C-n> :NERDTreeToggle<CR>

