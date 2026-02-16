local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
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

local opts = {}
require("vim-options")

require("lazy").setup("plugins")

-- Enable LSP server
vim.lsp.enable({
  "gopls",
  "lua-language-server",
  "ansible-language-server",
  "yaml-language-server",
  "jsonls",
  "rust-analyzer",
})

-- vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
vim.keymap.set("n", "gD", vim.lsp.buf.declaration, {})

-- Set up an LspAttach autocommand to enable features based on client
-- capabilities. A single autocommand can work for multiple LSP servers!
-- vim.api.nvim_create_autocmd("LspAttach", {
--  callback = function(ev)
--    local client = vim.lsp.get_client_by_id(ev.data.client_id)
--    if client:supports_method("textDocument/completion") then
--      vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
--    end
--  end,
-- })

-- Manage errors UI
vim.diagnostic.config({ virtual_text = true })