if version < 600
  syntax clear
elseif exists('b:current_syntax') && b:current_syntax == 'todo'
  finish
endif

syn match TodoTitle /=.*=/ contains=TodoTitleMark
syn match TodoTitleMark /=/ contained
syn match TodoItem /^\s*\zs\[ \]\_.\{-}\ze\(\_^\s*\[.\]\|\n\S\|\%$\)/ contains=TodoItemCheckBox
syn match TodoItemCheckBox /\[ \]/ contained
syn match TodoItemDone /^\s*\zs\[x\]\_.\{-}\ze\(\_^\s*\[.\]\|\n\S\|\%$\)/
syn match TodoVimPreProcessor /^vim:.*$/ contains=TodoFileTypeSpec
syn match TodoFileTypeSpec /ft=todo/ contained

hi link TodoTitle Title
hi link TodoTitleMark Normal
hi link TodoItem Special
hi link TodoItemCheckBox Identifier
hi link TodoItemDone Comment
hi link TodoVimPreProcessor NonText
hi link TodoFileTypeSpec NonText

let b:current_syntax = 'todo'
