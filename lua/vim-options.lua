-- basic settings
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")
vim.cmd("set clipboard=unnamedplus")
vim.g.mapleader = " "
vim.api.nvim_set_keymap('i', '<C-l>', '<Esc>la', { noremap = true, silent = true })


-- Copilot mapping
vim.api.nvim_set_keymap('i', '<Leader><Tab>', 'copilot#Accept("<CR>")', {expr = true, silent = true})

-- Set additional filetypes
vim.filetype.add({
  extension = {
    tfvars = "text"  -- tfvars is not supported by terraformls, this is workaround
  }
})
