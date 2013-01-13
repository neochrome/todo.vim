setlocal comments=:[\ ]\ 
setlocal autoindent
setlocal formatoptions=tcroq

map <silent><buffer> <c-space> :TodoToggle<cr>
imap <silent><buffer> <c-space> <c-o>:TodoToggle<cr>

if !exists('g:TodoDoneChar')
	let g:TodoDoneChar = 'x'
endif
