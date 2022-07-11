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
  indent = { enable = true, disable = {}},
}
