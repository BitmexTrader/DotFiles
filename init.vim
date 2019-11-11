

"Leader is <Space>
let mapleader =" "
"USE WITH FILE TYPES (EX PYTHON, HTML)
let maplocalleader =" ,"
"===== PLUGIN MANGER IS VIM-PLUG ==============="
filetype off
call plug#begin('~/.local/share/nvim/plugged')
"Better Directory Navigation"
Plug 'tpope/vim-vinegar'
Plug 'vim-scripts/netrw.vim'
"Testing
Plug 'mhinz/vim-startify'

Plug 'farfanoide/vim-kivy'
Plug 'chrisbra/csv.vim'
Plug 'flrnd/plastic.vim'
Plug 'bluz71/vim-moonfly-colors'
Plug 'neoclide/coc.nvim', {'tag': '*', 'branch': 'release'}
Plug 'junegunn/tmux-complete.vim'
"NODE STUFF
Plug 'peecky/vim-node-syntax'
Plug 'myhere/vim-nodejs-complete'
"================================="
Plug 'mattn/emmet-vim'
Plug 'Shougo/unite.vim'
Plug 'machakann/vim-highlightedyank'
Plug 'ntpeters/vim-better-whitespace'
Plug 'jpalardy/vim-slime'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'tpope/vim-fugitive'
" COLOR SCHEME PLUGIN "
Plug 'tstelzer/welpe.vim'
" AUTOMATICALLY CLOSE PARENTHESIS, ETC
Plug 'Townk/vim-autoclose'
" Window chooser
Plug 't9md/vim-choosewin'

" Surround
Plug 'tpope/vim-surround'

Plug 'edkolev/tmuxline.vim'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-airline/vim-airline'
Plug 'ajmwagar/vim-deus'

" Python Auto completion
Plug 'zchee/deoplete-jedi', { 'do': ':UpdateRemotePlugins' }
" Automatically Sort Python imports
Plug 'fisadev/vim-isort'

" TEST PLUGIN "
Plug 'junegunn/seoul256.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sheerun/vim-polyglot'
" Better Visual Guide
Plug 'Yggdroot/indentLine'
  " syntax check
Plug 'w0rp/ale'
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
"PYTHON
Plug 'vim-python/python-syntax'
Plug 'klen/python-mode'    "Python mode (docs, refactor, lints..)
Plug 'plytophogy/vim-virtualenv'
" Auto complete
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
Plug 'ncm2/ncm2-jedi'
Plug 'ncm2/nvim-typescript'
Plug 'ncm2/ncm2-vim'
Plug 'Shougo/neco-vim'
Plug 'Chiel92/vim-autoformat'
call plug#end()
set number
set path+=**

syntax on                 _               __      __ _____  __  __
"                | |              \ \    / /|_   _||  \/  |
" __      __ ___ | | _ __    ___   \ \  / /   | |  | \  / |
" \ \ /\ / // _ \| || '_ \  / _ \   \ \/ /    | |  | |\/| |
"  \ V  V /|  __/| || |_) ||  __/    \  /    _| |_ | |  | |
"   \_/\_/  \___||_|| .__/  \___|     \/    |_____||_|  |_|
"                   | |
"                   |_|
" ------------------------------------------------------------------------------
"Color Scheme"
colorscheme welpe
let g:limelight_conceal_ctermfg = 'welpe'
let g:limelight_conceal_ctermfg = 240
let python_highlight_all = 1
let g:lightline = { 'colorscheme': 'welpe' }
"Fast Save"
nnoremap <Leader>w :write<CR>
"Fast Quit"
nnoremap <Leader>q :quit<CR>
"Go's Last Buffer You Were In
nnoremap <Leader><Leader> <C-^>
syntax enable
syntax on
"=============================================================================="
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }
"============== AIRLINE_THEMES =========================="
let g:airline_powerline_fonts=1
let g:airline_theme ='angr'
"LIST OF GOOD THEMES FOR AIR LINE THEMES"
"'aye_mirage'
"'angr'
"'ayu_mirage'
"'onedark'
"========== FAST FILE OPENING LEADERS===================="
inoremap jk <esc>

"My To Do's List
nnoremap <leader>td :e ~/Desktop/TODOS/ToDayToDo.txt<cr>
nnoremap <leader>tdt :e ~/Desktop/TODOS<cr>
nnoremap <leader>pr  :e ~/Desktop/CookBooks/<cr>
nnoremap <leader>bi :e ~/bill.txt<cr>

"Opens My init.vim File.
nnoremap <leader>int :e $MYVIMRC<cr>
"Reloads New Edits Of My init.vim.
nnoremap <leader>sv :source $MYVIMRC<cr>
"Will Open My init.vim File In A NewTab.
nnoremap <leader>vn :tabnew $MYVIMRC<cr>
"Leader Plugin Mappings
nmap <leader>g :Goyo<CR>
nmap <leader>l :Limelight!!<CR>
nmap <leader>f :Files<CR>
nmap <leader>c :ChooseWin<CR>
nmap <leader>h :nohlsearch<CR>
nmap <leader>t :call ToggleColumnWidth()<CR>
nmap <leader>dd :MarkDrawer<CR>
nmap <leader>md :MarkdownPreview<CR>
nmap <leader>i :IndentLinesToggle<CR>
nmap <leader>sw :StripWhiteSpaces<CR>
nmap <leader>fz :Maps<CR>
nmap <leader>s :setlocal spell!<CR>
" My Plugin leader Mapping
nnoremap <leader>jj :call Uppercase#test()<cr>


" PYTHON SETUP
" FZF Settings
autocmd BufEnter * call ncm2#enable_for_buffer()
set completeopt=noinsert,menuone,noselect



"Basic Configs"
set nobackup
set noswapfile
set ruler
set cursorline
set wildmode=longest,list,full "Get bash like tab comepeles"
set cc=110
set relativenumber
setlocal spell spelllang=en_us
set splitright splitbelow  " Splits Windows To The Right And The Bottom "
set wildmenu
"StripWhiteSpace"
let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1

" Split Window Navigation "
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

"" CUSTOMIZE FZF COLORS TO MATCH YOUR COLOR SCHEME
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

"GETS TMUX AND SLIME TO WORK"
let g:slime_python_ipython = 1
let g:slime_default_config = {"socket_name": "default", "target_pane": "{right-of}"}
let g:slime_target = "tmux"

"GET TMUX AND NEOVIM SPLIT AND PANE TO WORK TOGETHER


let g:tmux_navigator_no_mappings = 1

nnoremap <silent> {Left-Mapping} :TmuxNavigateLeft<cr>
nnoremap <silent> {Down-Mapping} :TmuxNavigateDown<cr>
nnoremap <silent> {Up-Mapping} :TmuxNavigateUp<cr>
nnoremap <silent> {Right-Mapping} :TmuxNavigateRight<cr>
nnoremap <silent> {Previous-Mapping} :TmuxNavigatePrevious<cr>


let g:user_emmet_settings = {
  \  'php' : {
  \    'extends' : 'html',
  \    'filters' : 'c',
  \  },
  \  'xml' : {
  \    'extends' : 'html',
  \  },
  \  'haml' : {
  \    'extends' : 'html',
  \  },
  \}
let g:pandoc#filetypes#handled = ["pan doc", "markdown"]
let g:pandoc#filetypes#pandoc_markdown = 0
let g:pandoc#modules#disabled = ["folding"]

"EXECUTABLE
let g:pymode_python='python'

" PYTHON SYNTAX HIGHLIGHTS ---------------------- {{{}
let g:pymode_syntax=1
let g:pymode_syntax_slow_sync=1
let g:pymode_syntax_all=1
let g:pymode_syntax_print_as_function=g:pymode_syntax_all
let g:pymode_syntax_highlight_async_await=g:pymode_syntax_all
let g:pymode_syntax_highlight_equal_operator=g:pymode_syntax_all
let g:pymode_syntax_highlight_stars_operator=g:pymode_syntax_all
let g:pymode_syntax_highlight_self=g:pymode_syntax_all
let g:pymode_syntax_indent_errors=g:pymode_syntax_all
let g:pymode_syntax_string_formatting=g:pymode_syntax_all
let g:pymode_syntax_space_errors=g:pymode_syntax_all
let g:pymode_syntax_string_format=g:pymode_syntax_all
let g:pymode_syntax_string_templates=g:pymode_syntax_all
let g:pymode_syntax_doctests=g:pymode_syntax_all
let g:pymode_syntax_builtin_objs=g:pymode_syntax_all
let g:pymode_syntax_builtin_types=g:pymode_syntax_all
let g:pymode_syntax_highlight_exceptions=g:pymode_syntax_all
let g:pymode_syntax_docstrings=g:pymode_syntax_all
" }}}
" My Test Functions ---------------------- {{{}
function! FixLastSpellingError()
  normal! mm[s1z='m
endfunction
nnoremap <leader>sa :call FixLastSpellingError()<cr>

function! SourceCurrentFile()
	normal!
endfunction
nnoremap <leader>sop :source %<cr>
"Make into a plugin for markdown
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
"MAPPINGS FOR INSERT MODE
function! ToggleCase(between)
	if a:between == 1
	  insert! <esc>0v$Ui
	elseif a:between == 2
	  insert! <esc>0v$ui
	endif
endfunction

inoremap <c-y> :call ToggleCase(1);<cr>
inoremap <c-u> :call ToggleCase(2);<cr>

" }}}
"-- vim script file settings ---------------------- {{{}
augroup filetype_vim
	autocmd!
	autocmd FileType vim setlocal foldmethod=marker
	augroup END
" }}}
"-- NETRW SETTINGS ---------------------- {{{}
let g:netrw_liststyle = 1
let g:netrw_preview = 1
let g:netrw_winsize = 0
" }}}
"-- PLUGIN RUNTIMEPATHS ---------------------- {{{}
set runtimepath+=~/commands-vim
set runtimepath+=~/undermarkdown-vim
set runtimepath+=~/Desktop/CookBooks/Vim_Cook_Book/PluginFiles/MarkdownPlugin
set runtimepath+=~/uppercase-vim
"set runtimepath+=~/vim-amake
" }}}
