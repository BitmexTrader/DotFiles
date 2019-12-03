"LEADER IS <SPACE>"
let mapleader =" "
"Local Leader is <Space>,"
let maplocalleader =" ,"

""USING THE PLUGIN MANGER VIM-PLUG"
"Put Plugins below call plug#begin"
call plug#begin()

"DARK-VIM MASTER SHOUGO PLUGINS
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
Plug 'mcchrish/nnn.vim'
Plug 'tpope/vim-vinegar'
Plug 'ripxorip/bolt.nvim', { 'do': ':UpdateRemotePlugins' }
"
" AUT-COMPLETION: 
    Plug 'ncm2/ncm2'
    Plug 'roxma/nvim-yarp'

    " enable ncm2 for all buffers
    autocmd BufEnter * call ncm2#enable_for_buffer()

    " IMPORTANT: :help Ncm2PopupOpen for more information
    set completeopt=noinsert,menuone,noselect

    " NOTE: you need to install completion sources to get completions. Check
    " our wiki page for a list of sources: https://github.com/ncm2/ncm2/wiki
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
"COLOUR SCHEMES FOR MAIN BACKGROUND AND AIRLINE"
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

"BASIC CONFIGS"
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
"MAPPINGS TO Commands Folders"
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
"UPPERCASE SHORTCUT
nnoremap <leader>u 0v$U 

" PLUGIN MAPPINGS:
"Will fire your default browser to view MD files
nnoremap <leader>md :MarkdownPreview<cr>
"
"Unite Mapping " {{{----------------------------------------------
nnoremap <leader>f :<C-u>Unite -start-insert file<CR>
nnoremap <leader>r :<C-u>Unite -start-insert file_rec<cr>
nnoremap <leader>d :NERDTreeToggle<CR>
"CAN NAVIGATION ALL MODE WITH CTRL- ARROW KEYS
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
"terminal configs
"Will open a terminal all the way to the right
nnoremap <silent> <leader><leader> :vertical botright Ttoggle<cr><C-w>l

"Easy Escape terminal
tnoremap <leader><esc> <C-\><C-n><esc><cr>
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
"nnoremap <leader>d :Vex<cr>
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
" Opens the nnn window in a split
let g:nnn#layout = 'new' " or vnew, tabnew etc.
" Or pass a dictionary with window size
let g:nnn#layout = { 'left': '~20%' } " or right, up, down

" }}}

let g:NERDTreeDisableFileExtensionHighlight = 1
let g:NERDTreeDisableExactMatchHighlight = 1
let g:NERDTreeDisablePatternMatchHighlight = 1

let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1



let g:NERDTreeHighlightFolders = 1 " enables folder icon highlighting using exact match
let g:NERDTreeHighlightFoldersFullName = 1 





" you can add these colors to your .vimrc to help customizing
let s:brown = "905532"
let s:aqua =  "3AFFDB"
let s:blue = "689FB6"
let s:darkBlue = "44788E"
let s:purple = "834F79"
let s:lightPurple = "834F79"
let s:red = "AE403F"
let s:beige = "F5C06F"
let s:yellow = "F09F17"
let s:orange = "D4843E"
let s:darkOrange = "F16529"
let s:pink = "CB6F6F"
let s:salmon = "EE6E73"
let s:green = "8FAA54"
let s:lightGreen = "31B53E"
let s:white = "FFFFFF"
let s:rspec_red = 'FE405F'
let s:git_orange = 'F54D27'

let g:NERDTreeExtensionHighlightColor = {} " this line is needed to avoid error
let g:NERDTreeExtensionHighlightColor['css'] = s:blue " sets the color of css files to blue

let g:NERDTreeExactMatchHighlightColor = {} " this line is needed to avoid error
let g:NERDTreeExactMatchHighlightColor['.gitignore'] = s:git_orange " sets the color for .gitignore files

let g:NERDTreePatternMatchHighlightColor = {} " this line is needed to avoid error
let g:NERDTreePatternMatchHighlightColor['.*_spec\.rb$'] = s:rspec_red " sets the color for files ending with _spec.rb
" Markdown Plugin runtime path
set runtimepath+=~/EasyMD-vim
set runtimepath+=~/vim-amake
