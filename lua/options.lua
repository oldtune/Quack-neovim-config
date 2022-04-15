local vim = vim
local opt = vim.opt
local g = vim.g

g.mapleader = ' '
opt.number = true
opt.autoread = true
opt.autoindent = true
opt.hlsearch = true
opt.paste = true

vim.cmd("set encoding=utf-8")
vim.cmd("set fileencoding=utf-8")