local o = vim.opt
local g = vim.g

o.number = true
g.mapleader = " "
o.fillchars:append({ eob = " " })
o.relativenumber = true
o.expandtab = true
o.termguicolors = true
o.wrap = false
o.tabstop = 4
o.shiftwidth = 4
o.backup = false
o.writebackup = false
o.signcolumn = "yes"
o.foldmethod = "expr"
o.foldexpr = "nvim_treesitter#foldexpr()"
o.filetype = "on"
o.ignorecase = true
o.list = true
o.listchars = "space:\\u2022,tab:\\u21dc\\u2053\\u21dd,eol:\\u2937"


-- make nvim and os clipboard play nicely with each other
o.clipboard = "unnamedplus"
o.undodir = "/home/sirpi/vim_undo"
o.undofile = true

-- remember 30 items in cmd history
o.history = 30

o.shell = "/bin/bash"

-- Number of screen lines to keep at the top and bottom of the cursor
o.scrolloff = 10

vim.lsp.util.make_floating_popup_options(100, 50, {});

vim.g.clipboard = {
  name = 'win32yank-wsl',
  copy = {
    ['+'] = 'win32yank.exe -i --crlf',
    ['*'] = 'win32yank.exe -i --crlf',
  },
  paste = {
    ['+'] = 'win32yank.exe -o --lf',
    ['*'] = 'win32yank.exe -o --lf',
  },
  cache_enabled = false,
}

return {}




