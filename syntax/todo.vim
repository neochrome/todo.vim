" syntax file

syn match TodoCheckBox /\[.\?\]/ contains=TodoText
syn match TodoCheckBoxDone /^\s*\[x\].*$/

hi link TodoCheckBox String
hi link TodoCheckBoxDone Comment
