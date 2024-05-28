-- Adopted from kickstart.nvim

-- If you experience any errors while trying to install kickstart, run `:checkhealth` for more info.

--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = ','
vim.g.maplocalleader = ','
vim.g.have_nerd_font = true

require 'options'
require 'keymaps'
require 'lazy-setup'

-- vim: ts=2 sts=2 sw=2 et
