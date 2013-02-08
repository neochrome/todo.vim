if version < 600
  syntax clear
elseif exists('b:current_syntax') && b:current_syntax == 'todo'
  finish
endif

syn match TodoTitle /=.*=/ contains=TodoTitleMark
syn match TodoTitleMark /=/ contained
syn region TodoItem start="\s*\zs\[ \]" end="\ze\(\n\s*\n\|\[.\]\)" keepend contains=TodoItemCheckBox, TodoItemAdditionalText, TodoVimPreProcessor, TodoTitle, TodoComment
syn match TodoItemCheckBox /\[ \]/ contained
syn match TodoItemAdditionalText /\n\_.*$/ contained contains=TodoTitle, TodoVimPreProcessor
syn region TodoItemDone start="\s*\zs\[\S\]" end="\ze\(\n\s*\n\|\[.\]\)" contains=TodoVimPreProcessor
syn match TodoVimPreProcessor /^vim:.*$/ contains=TodoFileTypeSpec
syn match TodoFileTypeSpec /ft=todo/ contained
syn sync linebreaks=1

hi default link TodoTitle Title
hi default link TodoTitleMark Normal
hi default link TodoItem Special
hi default link TodoItemAdditionalText Comment
hi default link TodoItemCheckBox Identifier
hi default link TodoItemDone Ignore
hi default link TodoVimPreProcessor NonText
hi default link TodoFileTypeSpec NonText

if exists('g:TodoExplicitCommentsEnabled')
	syn match TodoComment "\(^\s*\|\s\)\zs//.*\ze$" contained
	hi default link TodoComment Comment
endif

let b:current_syntax = 'todo'
