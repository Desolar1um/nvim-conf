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

--python integration
vim.cmd('source $HOME/.config/nvim/vim-plug/plugins.vim')

--Theme
vim.cmd[[colorscheme dayfox]]

--Theme Config
require('nightfox').setup({
  options = {
    -- Compiled file's destination location
    compile_path = vim.fn.stdpath("cache") .. "/nightfox",
    compile_file_suffix = "_compiled", -- Compiled file suffix
    transparent = false,    -- Disable setting background
    terminal_colors = true, -- Set terminal colors (vim.g.terminal_color_*) used in `:terminal`
    dim_inactive = false,   -- Non focused panes set to alternative background
    styles = {              -- Style to be applied to different syntax groups
      comments = "italic",    -- Value is any valid attr-list value `:help attr-list`
      conditionals = "NONE",
      constants = "NONE",
      functions = "NONE",
      keywords = "NONE",
      numbers = "NONE",
      operators = "NONE",
      strings = "NONE",
      types = "NONE",
      variables = "NONE",
    },
    inverse = {             -- Inverse highlight for different types
      match_paren = false,
      visual = false,
      search = false,
    },
    modules = {             -- List of various plugins and additional options
      -- ...
    },
  }
})

--Treesitter Config
require'nvim-treesitter.configs'.setup {
  
  ensure_installed = { "lua", "python", "hcl", "json", "yaml", "sql" }, -- A list of parser names, or "all"

  sync_install = false, -- Install parsers synchronously (only applied to `ensure_installed`)

  auto_install = true,  -- Automatically install missing parsers when entering buffer

  ignore_install = { "javascript" }, -- List of parsers to ignore installing (for "all")

  highlight = {
    enable = true, -- `false` will disable the whole extension

    disable = { }, -- list of language that will be disabled

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },

  rainbow = {
    enable = true,
    extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
  },

  indent = {
    enable = true,
    disable = {}},
}

--require "lua.treesitter" --This line is NOT functional, requires fixing


--telescope config
require("telescope").setup()

vim.api.nvim_set_keymap('n', 'ff', ':Telescope find_files<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', 'fh', ':Telescope help_tags<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', 'fg', ':Telescope live_grep<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', 'fb', ':Telescope buffers<cr>', { noremap = true })
