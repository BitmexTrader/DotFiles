"Leader is <Space>
let mapleader =" "
" Local Leader is <Space>,
let maplocalleader =" ,"


call plug#begin()
"Python Plugins
"DARK-VIM MASTER SHOUGO PLUGINS"
Plug 'Shougo/unite.vim'
Plug 'Shougo/vimfiler.vim'
Plug 'Shougo/deoppet.nvim', { 'do': ':UpdateRemotePlugins' }

"Colour And Themes"
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-airline/vim-airline'
Plug 'edkolev/tmuxline.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'tstelzer/welpe.vim'
"File Navigation and other
Plug 'francoiscabrol/ranger.vim'
Plug 'rbgrouleff/bclose.vim'
Plug 'Yggdroot/indentLine'
Plug 'brooth/far.vim'
Plug 'roxma/nvim-completion-manager'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
call plug#end()

"ColorScheme"
colorscheme nord
"Set After ColorScheme"
set termguicolors
set number
set syntax
"Air Line/ Power Line"
let g:airline_powerline_fonts=1
let g:airline_theme ='nord'
set guifont=hackbold\ Nerd\ Font\ 15
"LIST OF GOOD THEMES FOR AIR LINE THEMES"

"'aye_mirage'
"'angr'
"'ayu_mirage'
"'onedark'


"Navigation Vim Windows
nnoremap <C-Right> <C-w>l
nnoremap <C-Left> <C-w>h
nnoremap <C-Up> <C-w>k
nnoremap <C-Down> <C-w>j
nmap sp :split<CR>
nmap vs :vsplit<CR>

"TO MAKE AND NAV, NEW TABS"
"Makes New Tab
nmap tt :tabnew<CR>
"Navigation
nmap tn :tabn<CR>
"Makes A Copy Of The Tab You Are In
nmap ts :tab split<CR>

"Save and Quit Files
noremap <Leader>w :write<CR>
nnoremap <Leader>q :quit<CR>

"Go's Last Buffer You Were In
nnoremap <Leader><Leader> <C-^>

"Basic Configurations 
set ruler
set cursorline
set wildmode=longest,list,full "Get bash like tab completes"
set cc=110
set relativenumber
setlocal spell spelllang=en_us
set splitright splitbelow  " Splits Windows To The Right And The Bottom "
set wildmenu

"Plugin mapping Leader shortcuts
nnoremap <leader>r :Ranger<cr>
"MY TO DO'S LIST
nnoremap <leader>td :e ~/Desktop/TODOS/ToDayToDo.txt<cr>
nnoremap <leader>tdt :e ~/Desktop/TODOS<cr>
nnoremap <leader>pr  :e ~/Desktop/CookBooks/<cr>
nnoremap <leader>bi :e ~/bill.txt<cr>

"OPENS MY INIT.VIM FILE.
nnoremap <leader>int :e $MYVIMRC<cr>
"Reloads New Edits Of My init.vim.
nnoremap <leader>sv :source $MYVIMRC<cr>
"Will Open My init.vim File In A NewTab.
nnoremap <leader>vn :tabnew $MYVIMRC<cr>
let g:ranger_command_override = 'ranger --cmd "set show_hidden=true"'
