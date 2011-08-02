if exists('g:loaded_todo')
	finish
endif
let g:loaded_todo = 1

function! s:Check()
	exe 'silent! s/^\(\s*\)\[ ]\(.*\)$/\1[x]\2/'
endfunction

function! s:UnCheck()
	exe 'silent! s/^\(\s*\)\[x]\(.*\)$/\1[ ]\2/i'
endfunction

function! s:Toggle()
	let view = winsaveview()
	let line = getline('.')
	if line =~ '\s*\[[xX]\]\s'
		call s:UnCheck()
	else
		call s:Check()
	endif
	call winrestview(view)
endfunction

command! TodoToggle call <SID>Toggle()
au FileType todo nmap <silent><buffer> <C-Space> :TodoToggle<CR>
