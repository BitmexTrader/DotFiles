let mapleader =" "
"Local Leader is <Space>,"
let maplocalleader =" ,"

"USING THE PLUGIN MANGER VIM-PLUG:
"Put Plugins below call plug#begin
call plug#begin()
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1
"DARK-VIM MASTER SHOUGO PLUGINS
if has('nvim')
  Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/denite.nvim'
  Plug 'roxma/nvim-yarp'
endif
if has('nvim')
  Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/defx.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
"Python Autocomplete
Plug 'deoplete-plugins/deoplete-jedi'
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
Plug 'kristijanhusak/defx-icons'
Plug 'kristijanhusak/defx-git'

Plug 'junegunn/goyo.vim'
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

"OTHER/Test"
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'troydm/zoomwintab.vim'
Plug 'jreybert/vimagit'
Plug 'jiangmiao/auto-pairs'
"MarkdownPreview
" If you have nodejs and yarn
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
Plug 'SidOfc/mkdx'

call plug#end()
"BASIC CONFIGS:
set relativenumber
set wildmode=longest:full,full
set path=**
set number 
set noswapfile
set clipboard+=unnamed
setlocal spell spelllang=en_us
set splitbelow splitright

"Python Settings:
set completeopt+=menuone   " show the popup menu even when there is only 1 match
set completeopt+=noinsert  " don't insert any text until user chooses a match
set completeopt-=longest   " don't insert the longest common text

"COLORSCHEME:
colorscheme welpe
"Set termguicolors after color scheme"
set termguicolors
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
" Switch between the last two files
nnoremap <Leader><Leader> <C-^>
" Navigation for terminal mode
noremap <C-Left> <C-\><C-N><C-w>h
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
"Tab-Autocomplete (Shift-Tab)
inoremap <S-Tab> <C-n>

" PLUGIN MAPPINGS:
"Will fire a instance of the default browser to view MarkDown files
nnoremap <leader>md :MarkdownPreview<cr>

"" Map Ctrl + p to open fuzzy find (FZF)
nnoremap <C-p> :Files<cr>


nnoremap <A-d> :Defx  -toggle -wincol=555 -split=floating -winwidth=30 -winheight=40<cr>
" もし作成してなかったら ~/.defxsessions を作成する
" そして defx を開く際にセッションファイルを指定する
"
let g:defx_sessions_file = $HOME . '/.defxsessions'

" floating window の設定
let s:denite_win_width_percent = 0.7
let s:denite_win_height_percent = 0.7

" Change denite default options

function! MgmResizeDefxFloatingWindow()
call defx#custom#option('_', {
    \ 'split': 'floating',
    \ 'winwidth': float2nr(&columns * s:denite_win_width_percent),
    \ 'wincol': float2nr((&columns - (&columns * s:denite_win_width_percent)) / 2),
    \ 'winheight': float2nr(&lines * s:denite_win_height_percent),
    \ 'winrow': float2nr((&lines - (&lines * s:denite_win_height_percent)) / 2),
    \ })
endfunction

call MgmResizeDefxFloatingWindow()

call defx#custom#column('filename', {
      \ 'min_width': float2nr(&columns * s:denite_win_width_percent - 30),
      \ 'max_width': float2nr(&columns * s:denite_win_width_percent - 30),
      \ })

nnoremap <expr><silent> sz ":Defx " . "-columns=git:indent:icons:filename "
  \ . "-buffer-name=leftw "
  \ . "-session-file=" . g:defx_sessions_file . " "
  \ . "-show-ignored-files "
  \ . "-resume "
  \ . "-toggle -split=vertical -winwidth=30 -direction=topleft<CR>"

nnoremap <expr><silent> ss ":Defx " . "-columns=git:indent:icons:filename:type:size:time "
  \ . "-buffer-name=float "
  \ . "-session-file=" . g:defx_sessions_file . " "
  \ . "-show-ignored-files "
  \ . "-resume "
  \ . "-toggle <CR>"

if getftype(g:defx_sessions_file) != "file"
  call writefile(["{}"], g:defx_sessions_file)
  echo "Created .defxsessions file to home directory."
endif

autocmd FileType defx call s:defx_my_settings()
autocmd FileType defx set nonumber
autocmd FileType defx set signcolumn=no
function! s:defx_my_settings() abort

  let bufkind = strpart(bufname(""), 7, 5)
  if (bufkind == "float")
    nnoremap <silent><buffer><expr> <CR>
    \ defx#is_directory()? defx#do_action('drop') :
    \ defx#do_action('multi', ['drop', 'quit'])
    nnoremap <silent><buffer><expr> l
    \ defx#is_directory()? defx#do_action('drop') :
    \ defx#do_action('multi', ['drop', 'quit'])
  else
    nnoremap <silent><buffer><expr> <CR>
    \ defx#do_action('drop')
    nnoremap <silent><buffer><expr> l
    \ defx#do_action('drop')
  endif

  " Define mappings
  nnoremap <silent><buffer><expr> cc
  \ defx#do_action('copy')
  nnoremap <silent><buffer><expr> m
  \ defx#do_action('move')
  nnoremap <silent><buffer><expr> p
  \ defx#do_action('paste')
  nnoremap <silent><nowait><buffer><expr> t
  \ defx#do_action('open_or_close_tree')
  nnoremap <silent><buffer><expr> T
  \ defx#do_action('open_tree_recursive')
  nnoremap <silent><buffer><expr> w
  \ defx#do_action('add_session')
  nnoremap <silent><buffer><expr> E
  \ defx#do_action('open', 'vsplit')
  nnoremap <silent><buffer><expr> P
  \ defx#do_action('open', 'pedit')
  nnoremap <silent><buffer><expr> K
  \ defx#do_action('new_directory')
  nnoremap <silent><buffer><expr> o
  \ defx#do_action('new_file')
  nnoremap <silent><buffer><expr> M
  \ defx#do_action('new_multiple_files')
  nnoremap <silent><buffer><expr> C
  \ defx#do_action('toggle_columns',
  \                'mark:filename:type:size:time')
  nnoremap <silent><buffer><expr> S
  \ defx#do_action('toggle_sort', 'time')
  nnoremap <silent><buffer><expr> dd
  \ defx#do_action('remove')
  nnoremap <silent><buffer><expr> r
  \ defx#do_action('rename')
  nnoremap <silent><buffer><expr> !
  \ defx#do_action('execute_command')
  nnoremap <silent><buffer><expr> x
  \ defx#do_action('execute_system')
  nnoremap <silent><buffer><expr> yy
  \ defx#do_action('yank_path')
  nnoremap <silent><buffer><expr> .
  \ defx#do_action('toggle_ignored_files')
  nnoremap <silent><buffer><expr> ;
  \ defx#do_action('repeat')
  nnoremap <silent><buffer><expr> h
  \ defx#do_action('cd', ['..'])
  nnoremap <silent><buffer><expr> ~
  \ defx#do_action('cd')
  nnoremap <silent><buffer><expr> q
  \ defx#do_action('quit')
  nnoremap <silent><nowait><buffer><expr> <Space>
  \ defx#do_action('toggle_select') . 'j'
  nnoremap <silent><buffer><expr> *
  \ defx#do_action('toggle_select_all')
  nnoremap <silent><buffer><expr> j
  \ line('.') == line('$') ? 'gg' : 'j'
  nnoremap <silent><buffer><expr> k
  \ line('.') == 1 ? 'G' : 'k'
  nnoremap <silent><buffer><expr> <C-l>
  \ defx#do_action('redraw')
  nnoremap <silent><buffer><expr> <C-g>
  \ defx#do_action('print')
  nnoremap <silent><buffer><expr> cd
  \ defx#do_action('change_vim_cwd')

  nnoremap <nowait><buffer> f :MgmDefxLineSearch<Space>
  nnoremap <nowait><buffer> F :MgmDefxLineBackSearch<Space>
endfunction
call defx#custom#column('mark', {
      \ 'readonly_icon': '✗',
      \ 'selected_icon': '✓',
      \ })

command! -nargs=1 MgmDefxLineSearch let @m=escape(<q-args>, '/\') | call search('\v^✹?\s*\S (\*|\|){1,2}\V\zs'. @m)
command! -nargs=1 MgmDefxLineBackSearch let @m=escape(<q-args>, '/\') | call search('\v^✹?\s*\S (\*|\|){1,2}\V\zs'. @m, 'b')

"VIMFILER: "If you want it work like Nerdtree"
"nnoremap <A-d> :VimFilerExplorer -winwidth=30 <cr>

"TERMINAL CONFIGS:
"Will open a terminal all the way to the right
nnoremap <silent> <leader>t :vertical botright Ttoggle<cr><C-w>l

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

"Python Settings:
let g:python3_host_prog='/home/bitcointeader/NVIM/bin/python3'
"MAKE NETRW WORK LIKE NERDTREE:"
let g:netrw_bannner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 20

"Air-Line And Power Line Fonts""- Get Tmux and Airline status bar pointy 
let g:airline_powerline_fonts=1
let g:airline_theme = 'nord'

"-- UnderlineHeading SETTINGS(I got this off youtube search vim script/Plugins) ---------------------- {{{}
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
"This will make text into upper or lower case
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
"Defx Settings:



let g:defx_icons_enable_syntax_highlight = 1
let g:defx_icons_column_length = 2
let g:defx_icons_directory_icon = ''
let g:defx_icons_mark_icon = '*'
let g:defx_icons_parent_icon = ''
let g:defx_icons_default_icon = ''
let g:defx_icons_directory_symlink_icon = ''
" Options below are applicable only when using "tree" feature
let g:defx_icons_root_opened_tree_icon = ''
let g:defx_icons_nested_opened_tree_icon = ''
let g:defx_icons_nested_closed_tree_icon = ''

"FZF Settings:
nnoremap <leader>gt :GFiles?<cr>
"MKDX Settings:
let g:mkdx#settings     = { 'highlight': { 'enable': 1 },
                        \ 'enter': { 'shift': 1 },
                        \ 'links': { 'external': { 'enable': 1 } },
                        \ 'toc': { 'text': 'Table of Contents', 'update_on_write': 1 },
                        \ 'fold': { 'enable': 1 } }
"LeaderF Settings:
let g:Lf_WindowPosition='bottom'
let g:Lf_ShowRelativePath='yes'
let g:Lf_StlColorscheme = 'powerline'
let g:Lf_StlSeparator = { 'left': '', 'right': '' }


"  }}}

"MY TEST PLUGINGS: Markdown Plugin runtime path
set runtimepath+=~/EasyMD-vim
set runtimepath+=~/vim-amake
