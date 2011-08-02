Super simple TODO plugin for Vim
================================

Installing
----------
### As a git-submodule with Pathogen
1. Install [pathogen](https://github.com/tpope/vim-pathogen)

2. In your vim-repository
	1. run `git submodule add http://github.com/neochrome/todo.vim.git bundle/todo`
	2. commit the changes

### Traditional install:
Drop the contents into your `~/.vim` directory as is.

Usage
-----
Todo items are denoted by putting square brackets first on a line (after any indentation).

Checking/unchecking is done by pressing `ctrl+space` in normal mode.

To enable checkbox toggling in a new buffer issue `:set ft=todo`.

Any file extension can be used as long as the last line of the file reads
`vim: ft=todo`.

For a complete example please see [example.txt](todo.vim/blob/master/example.txt).
