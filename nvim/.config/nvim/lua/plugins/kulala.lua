return {
  'mistweaverco/kulala.nvim',
  config = function()
    vim.keymap.set("n", "<leader>kk", ":lua require('kulala').run()<Cr>", {})
    vim.keymap.set("n", "<leader>kc", ":lua require('kulala').set_selected_env()<Cr>", {})
    vim.keymap.set("n", "<leader>kv", ":lua require('kulala').toggle_view()<Cr>", {})
    require('kulala').setup({
      -- default_view, body or headers
      default_view = "body",
      -- dev, test, prod, can be anything
      -- see: https://learn.microsoft.com/en-us/aspnet/core/test/http-files?view=aspnetcore-8.0#environment-files
      default_env = "dev",
      -- enable/disable debug mode
      debug = false,
      -- default formatters for different content types
      formatters = {
        json = { "jq", "." },
        xml = { "xmllint", "--format", "-" },
        html = { "xmllint", "--format", "--html", "-" },
      },
      -- default icons
      icons = {
        inlay = {
          loading = "⏳",
          done = "✅"
        },
        lualine = "🐼",
      }
    })
  end
}
