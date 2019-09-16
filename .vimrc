" Use [pathogen](https://github.com/tpope/vim-pathogen) and [sensible.vim](https://github.com/tpope/vim-sensible]
execute pathogen#infect()
syntax on
filetype plugin indent on

" General settings
set number " Enable line numbers
set title " Show the filename in the window titlebar
set shortmess=atI " Don’t show the intro message when starting Vim
set encoding=utf-8  " The encoding displayed.
set fileencoding=utf-8  " The encoding written to file.

" Arrow keys are unacceptable: http://is.gd/R4NwqI
map <Left> :echo "Use h instead of the Left Arrow!"<cr>
map <Right> :echo "Use l instead of the Right Arrow!"<cr>
map <Up> :echo "Use k instead of the Up Arrow!"<cr>
map <Down> :echo "Use j instead of the Down Arrow!"<cr>

" Search
set ignorecase " Ignore case of searches

" Tab settings
set shiftwidth=4  " Make tabs as wide as four spaces

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

" change color scheme (see them here: https://github.com/flazz/vim-colorschemes)
set background=dark
colorscheme inkpot

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

" Snippets
iab ysc Yours sincerely<CR>David Haberthür<CR>
iab mfg Mit freundlichen Grüssen<CR>David Haberthür<CR>
iab sig --<CR>University of Bern<CR>Institute of Anatomy<CR>Dr. David Haberthür (usually off on Thursday)<CR>Post-Doc<CR>Baltzerstrasse 2<CR>CH-3000 Bern 9
iab olex Oleksiy
iab hlus Hlushchuk
iab uaf μAngiofil
