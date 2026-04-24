return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      setup = {
        eslint = function()
          local formatter = LazyVim.lsp.formatter({
            name = "eslint: lsp",
            primary = false,
            priority = 200,
            filter = "eslint",
            format = function()
              Snacks.util.lsp.on({ "eslint" }, function()
                vim.cmd("LspEslintFixAll")
              end)
            end,
          })

          -- register the formatter with LazyVim
          LazyVim.format.register(formatter)
        end,
      },
    },
  },
}
