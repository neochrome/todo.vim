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
syn match TodoVimPreProcessor /^vim:.*$/ contains=TodoFileTypeSpec
syn match TodoFileTypeSpec /ft=todo/ contained

hi link TodoTitle Title
hi link TodoTitleMark Normal
hi link TodoItem Special
hi link TodoCheckBox Identifier
hi link TodoCheckBoxDone Ignore
hi link TodoVimPreProcessor NonText
hi link TodoFileTypeSpec NonText

let b:current_syntax = 'todo'
