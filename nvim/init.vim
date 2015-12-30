" vim-plug plugin mentru manageriatul pluginurilor 
call plug#begin('~/.nvim/plugged')

" Color Schemes
Plug 'https://github.com/flazz/vim-colorschemes.git'
Plug 'https://github.com/morhetz/gruvbox.git'

"""" Plugins

" Gundo
" Useful for undoing in a tree manner 
Plug 'https://github.com/sjl/gundo.vim.git' 
" Mapped the key to F5
nnoremap <F5> :GundoToggle<CR>
" Attention it has a bug
" persist (g)undo tree between sessions


" Vim-Airline
" The line on the bottem with pretty colors
Plug 'https://github.com/bling/vim-airline.git'
" Make the line always vizible 
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme='badwolf'

" BufExplorer
" Creates buffers 
Plug 'https://github.com/jlanzarotta/bufexplorer.git'
" Help 
" \be - open normal
" \bt - toggle open/close
" \bs - open orisontal split
" \bv - open vertical split
" :bn - next buffer
" :bp - previous buffer

" Syntastic
" When you save a file it chesk for erros in the syntacs
Plug 'https://github.com/scrooloose/syntastic.git'

" T-Comment
" Helps commenting blocks of text
Plug 'https://github.com/vim-scripts/tComment.git'
" Remaping <C-_> <C-_> (from tcomment) to <S-c>  , <S> = Shift
map <S-c> <C-_><C-_>

" Vim-Surround
" Helps surrounding stuff 
Plug 'https://github.com/tpope/vim-surround.git'

" Vim-Machit
" Press <%> and it will take you to maching parrents or tag
Plug 'https://github.com/edsono/vim-matchit.git'

" Vim-Fugitive
" Git integration for nvim
Plug 'https://github.com/tpope/vim-fugitive.git'
" :Git [args] - executs ani git command
" :Gwrite - adds the current file to the staging area
" :Gread - reads the current file from the last commit
" :Gmore - renames the current file and oppens it 
" :Gcommit - commits the staging file
" :Gblame - shows on what commit every line was changed 
" % - is the current file 

" Vim-Indexed-Search
" Changes the search command and gives an output of how many it found
Plug 'https://github.com/henrik/vim-indexed-search.git'

" Vim-Repeat
" Using the dot <.> you can repeat the last command as a whole
Plug 'https://github.com/tpope/vim-repeat.git'

" Vim auto-pairs
" Insert or delete brackets, parens, quites in pairs
Plug 'https://github.com/jiangmiao/auto-pairs.git'

" Vim-Session
" Needs vim-misc to run
" Saves the session 
Plug 'https://github.com/xolox/vim-misc.git'
Plug 'https://github.com/xolox/vim-session.git'
" Auto save the session
let g:session_autosave = 'yes'
" we don't autoload session
let g:session_autoload = 'no'
" Uses :
" 	:SaveSession <name>
" 	:OpenSession <name>
" 	:CloseSession <name>
" 	:DeleteSession <name>

" EditorConfig
" Used for mantaining the code style
Plug 'https://github.com/editorconfig/editorconfig-vim.git'
" Making sure it works with fugitive (git integration)
let g:EditorConfig_exclude_patterns = ['fugitive://.*']

" Tabular
" Makes an alignment based on a pattern
Plug 'https://github.com/godlygeek/tabular.git'
" Uses 
" 	:Tab /regex pattern to aline too
" Or
" 	:Tab /regex pattern\zs 
" 	this eximne allines afther the caracter afther the pattern leaving the
" 	pattern allone 

" Vim-GitGutter
" Shows git diff on the fille
Plug 'https://github.com/airblade/vim-gitgutter.git'

" Vim-EasyMotion
" For moving betwen words 
Plug 'https://github.com/Lokaltog/vim-easymotion.git'
" Uses 
" 	\\w     to look at all words
" 	\\W 	to look at words separeted with a space
" 	\\f	to search for a caracter 

" Clever-f
" Finding characters
Plug 'https://github.com/rhysd/clever-f.vim.git'
" Usage
" 	f{char}		- go to the next apparence of {char} on the right 
" 	F{char}		- go to the next apparence of {char} on the left
"	t{char}		- go TILL the next apparence of {char} on the right
"	T{char}		- go TILL the next apparence of {char} on the left

""" Togglable panels

" NeardTree
" For looking at the tree structure
Plug 'https://github.com/scrooloose/nerdtree.git'
" Mapping the neardTree toggle to F2
map <F2> :NERDTreeToggle<CR>

" Vinegar.Vim
" Pressing -  will get you in the directory listing ( line /e . )
Plug 'https://github.com/tpope/vim-vinegar.git'


" TagList
Plug 'https://github.com/vim-scripts/taglist.vim.git'
" ATENTIE : HABAR NU AM CE FACE 

" TagBar
" Showing the structure of a file 
Plug 'https://github.com/majutsushi/tagbar.git'
" Dependencies 
" Exuberant ctags 5.5
" Mapping the toggle pannel to F8
nmap <F8> :TagbarToggle<CR>

" Ctrl-p
" Fuzzy finder 
Plug 'https://github.com/kien/ctrlp.vim.git'



""" AutoCompletion

" YouCompletMe
Plug 'https://github.com/Valloric/YouCompleteMe.git', { 'do': './install.sh --clang-completer'}
" Obs.
" 	You have to run install 

" Vim-Addon-mw-utils
Plug 'https://github.com/MarcWeber/vim-addon-mw-utils.git'

" Tlib_vim
Plug 'https://github.com/tomtom/tlib_vim.git'

" Sparkup
" for expandin html expresion html > body .. etc ...
Plug 'https://github.com/rstacruz/sparkup.git'
" Changin the default mapping 
let g:sparkupExecuteMapping="<C-y>"
" Uses :
" 	Ctrl + y - to expand
" 	Ctrl + n - to move to the next atribute


" Floobits
" For Pair Programing
Plug 'https://github.com/Floobits/floobits-neovim.git'


""" Snippers

" UltiSnip
" This is the engine
Plug 'https://github.com/SirVer/ultisnips.git'

" Vim-Snippets
" This are the snippets
Plug 'https://github.com/honza/vim-snippets.git'
" Setting key dindings
let g:UltiSnipsExpandTrigger="<C-e>"
let g:UltiSnipsJumpForwardTrigger="<C-k>"
let g:UltiSnipsJumpBackwardTrigger="<C-j>"
" Usage
" 	ctrl + e 	- expande snippet
" 	ctrl + k	- travel forword on the snippet
" 	ctrl + j	- travel backwords on the snippet
"

""" Programing Languages

"" Javascript 
" Javascript-libraries-syntax
" For Jquery, anglular, flux, react, backbone, etc..
Plug 'https://github.com/othree/javascript-libraries-syntax.vim.git'

" Vim-javascript
" Syntax, indent, etc ...
Plug 'https://github.com/pangloss/vim-javascript.git'



call plug#end()

""" Functions

" Relative and simple number lines
function! NumberToggle()
  if(&relativenumber == 1)
    set number
  else
    set relativenumber
  endif
endfunc

" Mapping CTRL + n to toggle the number mapping
nnoremap <C-n> :call NumberToggle()<cr>
" Calling number mapping by default 
call NumberToggle()



""" Key Mapping

" Remapinc CTRL + W + (h, j, k, l) to CTRL +(h, j, k, l) 
" for controlling the windows
map <C-h> <C-W>h
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-l> <C-W>l
" Remaping comenzile pentru resizing Windows  
map <S-k> <C-W>+ 
map <S-j> <C-W>- 
map <S-h> <C-W>< 
map <S-l> <C-W>> 
" Useful comands :
" 	:sp  - split horizontaly
" 	:vsp - split vertycaly
" 	CTRL + W + R - swap top/bottom or left/rogjt split
" 	Ctrl + W + o - close every window exept this one 

" Remmap annoing commands
:command WQ wq
:command Wq wq
:command W w
:command Q q


" Disableing arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Nu mai e nevoie de a ne limita la 79 de caractere
" set textwidth=79  " lines longer than 79 columns will be broken
set shiftwidth=4  " operation >> indents 4 columns; << unindents 4 columns
set tabstop=4     " a hard TAB displays as 4 columns
set expandtab     " insert spaces When hitting TABs
set softtabstop=4 " insert/delete 4 spaces When hitting a TAB/BACKSPACE
set shiftround    " round indent to multiple of 'shiftWidth'
set autoindent    " align the neW line indent with the previous line


""" Changing the colorscheme 

" colorscheme darkerdesert
set background=dark
colorscheme gruvbox
