if exists('g:loaded_todo')
	finish
endif
let g:loaded_todo = 1
let g:TodoDoneChar = 'x'

function! s:Check()
	exe 'silent! s/^\(\s*\)\[ ]\(.*\)$/\1['.g:TodoDoneChar.']\2/'
endfunction

function! s:UnCheck()
	exe 'silent! s/^\(\s*\)\[\S]\(.*\)$/\1[ ]\2/i'
endfunction

function! s:Toggle()
	let view = winsaveview()
	let line = getline('.')
	if line =~ '\s*\[\S\]\s'
		call s:UnCheck()
	else
		call s:Check()
	endif
	call winrestview(view)
endfunction

command! TodoToggle call <SID>Toggle()
