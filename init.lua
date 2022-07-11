--nvim-from-vim
--number lines
vim.opt.number = true

--Tabs
vim.opt.autoindent = true
vim.opt.tabstop = 4 
vim.opt.smarttab = true
vim.opt.softtabstop = 4 

--enable mouse
vim.opt.mouse = 'a'

--leader
vim.g.mapleader = ','

--Load Plugins
vim.cmd('source $HOME/.config/nvim/vim-plug/plugins.vim')

--Theme
vim.cmd[[colorscheme nightfox]]

require "lua._nightfox"   -- Theme
require "lua._treesitter" 
require "lua._tree"
require "lua._telescope"
require "lua._keybinds"
require "lua._cmp"
