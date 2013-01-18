setlocal comments=b:[\ ],b:[x] 
setlocal autoindent
setlocal formatoptions=tcroq

map <silent><buffer> <c-space> :TodoToggle<cr>
imap <silent><buffer> <c-space> <c-o>:TodoToggle<cr>

let g:TodoDoneChar = 'x'
