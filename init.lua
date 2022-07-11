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

require "_nightfox"   -- Theme
require "_treesitter" 
require "_tree"
require "_telescope"
require "_keybinds"
require "_cmp"
