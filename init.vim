"Leader-is-<Space>:
let mapleader =" "
"Local Leader is <Space>,"
let maplocalleader =" ,"

"USING THE PLUGIN MANGER VIM-PLUG:
"Put Plugins below call plug#begin
call plug#begin()

"DARK-VIM MASTER SHOUGO PLUGINS
"This gets deoplete to work.
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1
if has('nvim')
  Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
else
	
  Plug 'Shougo/defx.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
Plug 'Shougo/deol.nvim'
Plug 'Shougo/unite.vim'
Plug 'Shougo/vimfiler.vim'
Plug 'Shougo/deol.nvim'
"Vimshell needs vimproc to run, so install that to
Plug 'Shougo/vimshell.vim'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
"THE MAN TPOPES PLUGINS "
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-obsession'
"Directory Manger
Plug 'tpope/vim-vinegar'
Plug 'rbgrouleff/bclose.vim'

" AUTO-COMPLETION: 
    Plug 'ncm2/ncm2'
    Plug 'roxma/nvim-yarp'

    " enable ncm2 for all buffers
    autocmd BufEnter * call ncm2#enable_for_buffer()

    " IMPORTANT: :help Ncm2PopupOpen for more information
    set completeopt=noinsert,menuone,noselect

    " NOTE: you need to install completion sources to get completions. Check
    " the wiki page for a list of sources: https://github.com/ncm2/ncm2/wiki
    Plug 'ncm2/ncm2-bufword'
    Plug 'ncm2/ncm2-path'
Plug 'ncm2/ncm2-vim' | Plug 'Shougo/neco-vim'
Plug 'ncm2/ncm2-syntax' | Plug 'Shougo/neco-syntax'
Plug 'ncm2/ncm2-github'
"css
Plug 'ncm2/ncm2-cssomni'
"javascript
Plug 'ncm2/ncm2-tern'
"typescript
Plug 'mhartington/nvim-typescript'
"python
Plug 'ncm2/ncm2-jedi'
"Fuzzy-File-Finder:
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }

" THEME / INTERFACE
"Python Syntax Highlighter
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
"Highlight yanked text in visual mode"
Plug 'machakann/vim-highlightedyank'
Plug 'arcticicestudio/nord-vim'
Plug 'tstelzer/welpe.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'kyuhi/vim-emoji-complete'
Plug 'ryanoasis/vim-devicons'
Plug 'zhaocai/linepower.vim'
"TUMX STATUS LINE AND COMPLETION"
Plug 'edkolev/tmuxline.vim'
Plug 'prabirshrestha/async.vim'
"these two give completion over tmux panes, they are great together
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'wellle/tmux-complete.vim'
"SNIPPET-PLUGINS
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
"Plugin For NeoVim Terminal
Plug 'kassio/neoterm'

"OTHER"
Plug 'jiangmiao/auto-pairs'
"MarkdownPreview
" If you have nodejs and yarn
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
call plug#end()

"BASIC CONFIGS:
set relativenumber
set wildmode=longest:full,full
set path=**
set number 
set noswapfile
"COLORSCHEME:
colorscheme welpe
"Set termguicolors after color scheme"
set termguicolors

setlocal spell
set splitbelow splitright


"LEADER MAPPINGS:

"OPENS  INNIT.VIM FILE:  ---------------------------------
nnoremap <leader>int :edit $MYVIMRC<cr>
"Reloads New Edits Of My init.vim.
nnoremap <leader>sv :source $MYVIMRC<cr>
"Will Open  init.vim File In A NewTab.
nnoremap <leader>vn :tabnew $MYVIMRC<cr>
"This opens a Todo text file
nnoremap <leader>tdt :edit ~/Desktop/TODOS/ToDayToDo.txt<cr>

"fast Quit and save (write) Shortcuts"
nnoremap <leader>w :write<cr>
nnoremap <leader>q :quit<cr>
"Turns off Highlighting after searching"
nnoremap <leader>h :nohlsearch<cr>
"Toggles Spell checking'
nnoremap <leader>s :setlocal spell! spelllang=en_us<cr> 
"Fast Spelling corrections 
nnoremap <leader>sa ]s1z=

" PLUGIN MAPPINGS:
"Will fire a instance of the default browser to view MD files
nnoremap <leader>md :MarkdownPreview<cr>
"
"Unite Mapping " {{{----------------------------------------------
nnoremap <leader>f :<C-u>Unite -start-insert file<cr>
nnoremap <leader>u :<C-u>Unite -start-insert file_rec<cr>

"VIMFILER: "If you want it work like Nerdtree"
nnoremap <A-d> :VimFilerExplorer -winwidth=30 <cr>

"CAN NAVIGATE ALL MODES WITH CTRL- ARROW KEYS
" Navigation for terminal mode
tnoremap <C-Left> <C-\><C-N><C-w>h
tnoremap <C-Down> <C-\><C-N><C-w>j
tnoremap <C-Up> <C-\><C-N><C-w>k
tnoremap <C-Right> <C-\><C-N><C-w>l
" Navigation for insert mode
inoremap <C-Left> <C-\><C-N><C-w>h
inoremap <C-Down> <C-\><C-N><C-w>j
inoremap <C-Up> <C-\><C-N><C-w>k
inoremap <C-Right> <C-\><C-N><C-w>l

"Navigation for Normal mode
nnoremap <C-Right> <C-w>l
nnoremap <C-Left> <C-w>h
nnoremap <C-Up> <C-w>k
nnoremap <C-Down> <C-w>j

"Shortcut for Splitting Windows"
nnoremap sp :split<cr>
nnoremap vs :vsplit<cr>

"TERMINAL CONFIGS:
"Will open a terminal all the way to the right
nnoremap <silent> <leader><leader> :vertical botright Ttoggle<cr><C-w>l

"Easy Escape terminal
tnoremap <leader><esc> <C-\><C-n><esc><cr>

"Make New Tabs And Navigation:
"makes new tab
nmap tt :tabnew<CR>
"Navigation
nmap tn :tabn<CR>
"Makes A Copy Of The Tab You Are In
nmap ts :tab split<CR>

"Will source $MYVIMRC when it is saved.
augroup VimReload
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END

"{{{"TMUX COMPLETION SETTINGS:
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

"MAKE NETRW WORK LIKE NERDTREE:"
let g:netrw_bannner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 20

"Air-Line And Power Line Fonts""- Get Tmux and Airline status bar pointy 
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
"
function! UpperCace(upper) 
	if a:upper == 1
	  normal! 0v$U
        elseif a:upper == 2
	  normal! 0v$u
	endif
endfunction

nnoremap <C-c> :call UpperCace(1);<cr>
nnoremap <C-x> :call UpperCace(2);<cr>
"
"PLUGIN SETTINGS:

"LeaderF Settings:
let g:Lf_WindowPosition='bottom'
let g:Lf_ShowRelativePath='yes'
let g:Lf_StlColorscheme = 'powerline'
let g:Lf_StlSeparator = { 'left': '', 'right': '' }
"Vimfiler Settings:
let g:vimfiler_tree_leaf_icon = ' '
let g:vimfiler_tree_opened_icon = '▾'
let g:vimfiler_tree_closed_icon = '▸'
let g:vimfiler_file_icon = '-'
let g:vimfiler_marked_file_icon = '*'
let g:vimfiler_force_overwrite_statusline=0  
let g:vimfiler_tree_indentation=2

"MY TEST PLUGINGS: Markdown Plugin runtime path
set runtimepath+=~/EasyMD-vim
set runtimepath+=~/vim-amake
