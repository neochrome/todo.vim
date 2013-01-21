Super simple TODO plugin for Vim
================================

Installing
----------
### With [vundle](https://github.com/gmarik/vundle)
1. Reference the plugin in your `.vimrc` with: `Bundle 'neochrome/todo.vim`
2. Launch `vim` and run `:BundleInstall`

### As a git-submodule with Pathogen
1. Install [pathogen](https://github.com/tpope/vim-pathogen)

2. In your vim-repository
	1. run `git submodule add http://github.com/neochrome/todo.vim.git bundle/todo`
	2. commit the changes

### Traditional install:
Drop the contents into your `~/.vim` directory as is.

Configuration
-------------
Example `.vimrc`:

    " todo.vim default highlight groups, feel free to override as wanted
    hi link TodoTitle Title
    hi link TodoTitleMark Normal
    hi link TodoItem Special
    hi link TodoItemAdditionalText Comment
    hi link TodoItemCheckBox Identifier
    hi link TodoItemDone Ignore
		hi link TodoComment Comment							" explicit comments must be enabled for this

		" define like this to enable explicit comments
		" comments then start with //
		let g:TodoExplicitCommentsEnabled = 1

Usage
-----
Todo items are denoted by putting square brackets with an empty space first on a line (after any indentation).

Checking/unchecking is done by pressing `ctrl+space` in normal mode.

To enable checkbox toggling in a new buffer issue `:set ft=todo`.

Any file extension can be used as long as the last line of the file reads
`vim: ft=todo`

For an example please see [example.txt](todo.vim/blob/master/example.txt).
