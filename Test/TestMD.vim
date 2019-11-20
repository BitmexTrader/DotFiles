"Markdown heading ShortCuts
"MAIN HEADING
nnoremap u1 :normal! I# <cr>
"SUB-HEADING
nnoremap u2 :normal! I## <cr>
"THIRD-HEADING
nnoremap u3 :normal! I### <cr>

"Mapping For Making Bold Text In Markdown Files
nnoremap mb :normal! 0i**<esc>A** <esc>A<cr>

"Mapping For Making Block text In Markdown Files
nnoremap bl :normal! 0O```<esc>jo```<esc>A<cr>

"Mapping For Python Syntaxing in Markdown Files
nnoremap mpy :normal! 0O```py<esc>jo```<esc>A<cr><esc>

"Mapping For Making Vim Text In Markdown Files
nnoremap mv :normal! 0O```vim<esc>jo```<esc>A<esc><cr><esc>
