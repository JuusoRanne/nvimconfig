-- setting up package manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


-- get lazy configs and plugs (points to plugins.lua)
require("vim-options")
require("lazy").setup("plugins")


vim.cmd(":Copilot disable")
vim.cmd(":colorscheme catppuccin")


