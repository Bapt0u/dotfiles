vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number relativenumber")
vim.cmd("set scrolloff=5")
vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct
vim.cmd("set signcolumn=yes:1")
vim.keymap.set("n", "<leader>e", ":Neotree filesystem reveal left<CR>")