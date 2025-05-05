vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number relativenumber")
vim.cmd("set scrolloff=5")
vim.cmd("set nofixendofline")
vim.cmd("set noeol")

-- Add noselect to completeopt, otherwise autocompletion is annoying
vim.cmd("set completeopt=noselect,menuone,popup")

-- Enable rounded borders in floating windows
-- vim.o.winborder = 'rounded'
vim.o.winborder = "none"

vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct
vim.cmd("set signcolumn=yes:1")
vim.keymap.set("n", "<leader>e", ":Neotree filesystem reveal left<CR>")
vim.cmd("set winbar=%=%m\\ %f")
vim.diagnostic.config({ virtual_text = true })

-- buffers
vim.api.nvim_set_keymap("n", "tk", ":blast<enter>", { noremap = false })
vim.api.nvim_set_keymap("n", "tj", ":bfirst<enter>", { noremap = false })
vim.api.nvim_set_keymap("n", "th", ":bprev<enter>", { noremap = false })
vim.api.nvim_set_keymap("n", "tl", ":bnext<enter>", { noremap = false })
vim.api.nvim_set_keymap("n", "td", ":bdelete<enter>", { noremap = false })

-- Trouble
vim.keymap.set("n", "<leader>xx", "<cmd>TroubleToggle<cr>", { silent = true, noremap = true })
vim.keymap.set("n", "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>", { silent = true, noremap = true })
vim.keymap.set("n", "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>", { silent = true, noremap = true })
vim.keymap.set("n", "<leader>xl", "<cmd>TroubleToggle loclist<cr>", { silent = true, noremap = true })
vim.keymap.set("n", "<leader>xq", "<cmd>TroubleToggle quickfix<cr>", { silent = true, noremap = true })
vim.keymap.set("n", "gR", "<cmd>TroubleToggle lsp_references<cr>", { silent = true, noremap = true })

-- Fold
vim.cmd("set foldmethod=expr")
vim.cmd("set foldexpr=v:lua.vim.treesitter.foldexpr()")
vim.cmd("set foldlevel=99")
-- vim.cmd("set foldlevelstart=1")
vim.cmd("set foldnestmax=4")

-- Ansible config
-- [Stolen here](https://github.com/mfussenegger/nvim-ansible/blob/main/ftdetect/ansible.lua)
if vim.filetype then
	vim.filetype.add({
		pattern = {
			[".*/host_vars/.*%.ya?ml"] = "yaml.ansible",
			[".*/group_vars/.*%.ya?ml"] = "yaml.ansible",
			[".*/group_vars/.*/.*%.ya?ml"] = "yaml.ansible",
			[".*/playbooks/.*%.ya?ml"] = "yaml.ansible",
			[".*/roles/.*/tasks/.*%.ya?ml"] = "yaml.ansible",
			[".*/roles/.*/handlers/.*%.ya?ml"] = "yaml.ansible",
		},
	})
else
	vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
		pattern = {
			"*/host_vars/*.yml",
			"*/host_vars/*.yaml",
			"*/group_vars/*.yml",
			"*/group_vars/*.yaml",
			"*/group_vars/*/*.yml",
			"*/group_vars/*/*.yaml",
			"*/playbooks/*.yml",
			"*/playbooks/*.yaml",
			"*/roles/*/tasks/*.yml",
			"*/roles/*/tasks/*.yaml",
			"*/roles/*/handlers/*.yml",
			"*/roles/*/handlers/*.yaml",
		},
		callback = function()
			vim.bo.filetype = "yaml.ansible"
		end,
	})
end