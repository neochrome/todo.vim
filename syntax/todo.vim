if version < 600
  syntax clear
elseif exists('b:current_syntax') && b:current_syntax == 'todo'
  finish
endif

syn match TodoTitle /=.*=/ contains=TodoTitleMark
syn match TodoTitleMark /=/ contained
syn match TodoItem /^\s*\[.\?\].*$/ contains=TodoCheckBox
syn match TodoCheckBox /\[.\?\]/ contained
syn match TodoCheckBoxDone /^\s*\[x\].*$/
syn match TodoFileTypeSpec /vim: ft=todo/

hi link TodoTitle Title
hi link TodoTitleMark Normal
hi link TodoItem Special
hi link TodoCheckBox Identifier
hi link TodoCheckBoxDone Ignore
hi link TodoFileTypeSpec Ignore

let b:current_syntax = 'todo'
