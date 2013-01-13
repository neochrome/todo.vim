if version < 600
  syntax clear
elseif exists('b:current_syntax') && b:current_syntax == 'todo'
  finish
endif

syn match TodoTitle /=.*=/ contains=TodoTitleMark
syn match TodoTitleMark /=/ contained
syn region TodoItem start="\s*\zs\[ \]" end="\ze\(\n\s*\n\|\[.\]\)" keepend contains=TodoItemCheckBox, TodoItemAdditionalText, TodoVimPreProcessor, TodoTitle
syn match TodoItemCheckBox /\[ \]/ contained
syn match TodoItemAdditionalText /\n\_.*$/ contained contains=TodoTitle, TodoVimPreProcessor
syn region TodoItemDone start="\s*\zs\[\S\]" end="\ze\(\n\s*\n\|\[.\]\)" contains=TodoVimPreProcessor
syn match TodoVimPreProcessor /^vim:.*$/ contains=TodoFileTypeSpec
syn match TodoFileTypeSpec /ft=todo/ contained
syn sync linebreaks=1

hi link TodoTitle Title
hi link TodoTitleMark Normal
hi link TodoItem Special
hi link TodoItemAdditionalText Comment
hi link TodoItemCheckBox Identifier
hi link TodoItemDone Ignore
hi link TodoVimPreProcessor NonText
hi link TodoFileTypeSpec NonText

let b:current_syntax = 'todo'
