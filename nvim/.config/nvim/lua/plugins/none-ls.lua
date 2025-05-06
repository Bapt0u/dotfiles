return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
        -- https://github.com/nvimtools/none-ls.nvim/blob/main/doc/BUILTINS.md#formatting
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.gofmt,
        null_ls.builtins.formatting.black,
        null_ls.builtins.formatting.isort,
        null_ls.builtins.formatting.yamlfmt,
        null_ls.builtins.diagnostics.ansiblelint,
        --        null_ls.builtins.formatting.ansible-language-server,
        null_ls.builtins.completion.spell,
        -- require("none-ls.diagnostics.eslint") -- requires none-ls-extras.nvim
      },
    })
    vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
  end,
}