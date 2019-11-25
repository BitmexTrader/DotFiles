"Leader is <Space>"
let mapleader =" "
"Local Leader is <Space>,"
let maplocalleader =" ,"

"PLUGINS THAT I AM USING"
""Using the Plugin Manger Vim-Plug"
call plug#begin()

"DARK-VIM MASTER SHOUGO PLUGINS
Plug 'Shougo/unite.vim'
Plug 'Shougo/vimfiler.vim'
Plug 'Shougo/vimshell.vim'

"THE MAN TPOPES PLUHGINS "
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
"Directory Manger
Plug 'tpope/vim-vinegar'
"Plug 'pablopunk/native-sidebar.vim'
"COLOUR SCHEMES FOR MAIN BACKGROUND AND AIRLINE"
"Python Syntax Highlighter
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
"Highlight yanked text in visual mode"
Plug 'machakann/vim-highlightedyank'
Plug 'arcticicestudio/nord-vim'
Plug 'tstelzer/welpe.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Tux Status line and Completion"
Plug 'edkolev/tmuxline.vim'
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'wellle/tmux-complete.vim'
"Auto completion"
Plug 'roxma/nvim-completion-manager'
"Snippet-Plugins
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'
"Test
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'

"Other"
"MarkdownPreview
" If you have nodejs and yarn
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }

Plug 'jiangmiao/auto-pairs'
call plug#end()

"BASIC CONFIGS"
set relativenumber
set wildmode=longest:full,full
set path=**
set number 
set noswapfile
colorscheme welpe
"Set after color scheme"
set termguicolors
setlocal spell
set splitbelow splitright


"MY LEADER MAPPINGS

""{{{"Opens my innit.vim file" ---------------------------------
nnoremap <leader>int :edit $MYVIMRC<cr>
nnoremap <leader>tdt :edit ~/Desktop/TODOS/ToDayToDo.txt<cr>
"Reloads New Edits Of My init.vim.
nnoremap <leader>sv :source $MYVIMRC<cr>
"Will Open My init.vim File In A NewTab.
nnoremap <leader>vn :tabnew $MYVIMRC<cr>
"MAPPINGS TO Commands Folders"
nnoremap <leader>cm :vsplit ~/Desktop/Commands/NNN.md<cr>


"fast Quit and save (write) Shortcuts"
nnoremap <leader>w :write<cr>
noremap <leader>q :quit<cr>
"Unite Mapping " {{{----------------------------------------------
nnoremap <leader>f :<C-u>Unite -start-insert file<CR>
nnoremap <leader>r :<C-u>Unite -start-insert file_rec<CR>

"Turns off Highlighting after searching"
nnoremap <leader>h :nohlsearch<cr>
"Toggles Spell checking tests spelling'
nnoremap <leader>s :setlocal spell! spelllang=en_us<cr> 
"Fast Spelling corrections 
nnoremap <leader>sa ]s1z=
nnoremap <leader>u 0v$U 
"}}}
"Navigation Vim Windows
nnoremap <C-Right> <C-w>l
nnoremap <C-Left> <C-w>h
nnoremap <C-Up> <C-w>k
nnoremap <C-Down> <C-w>j
"Shortcut for Splitting Windows"
nnoremap sp :split<cr>
nnoremap vs :vsplit<cr>

"Make New Tabs And Navigation
"Makes New Tab
nmap tt :tabnew<CR>
"Navigation
nmap tn :tabn<CR>
"Makes A Copy Of The Tab You Are In
nmap ts :tab split<CR>

" Source $MYVIMRC when it is saved.
augroup VimReload
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END

"{{{"Tmux Completion Settings
let g:tmuxcomplete#asyncomplete_source_options = {
            \ 'name':      'tmuxcomplete',
            \ 'whitelist': ['*'],
            \ 'config': {
            \     'splitmode':      'words',
            \     'filter_prefix':   1,
            \     'show_incomplete': 1,
            \     'sort_candidates': 0,
            \     'scrollback':      0,
            \     'truncate':        0
            \     }
            \ }

"Make Netrw work like Nerdtree"
let g:netrw_bannner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 20
"Command for opening Netrw to the left
nnoremap <leader>d :Vex<cr>
"Air-Line And Power Line Fonts""-For Get Tux and Airline status bar pointy 
let g:airline_powerline_fonts=1
let g:airline_theme = 'nord'

"-- UnderlineHeading SETTINGS ---------------------- {{{}
function! UnderlineHeading(level)
        if a:level == 1
          normal! yypVr=
        elseif a:level == 2
          normal! yypVr-
        else
          normal! I###
        endif
endfunction

nnoremap <leader>u1 :call UnderlineHeading(1);<cr>
nnoremap <leader>u2 :call UnderlineHeading(2);<cr>
nnoremap <leader>u3 :call UnderlineHeading(3);<cr>
" }}}
