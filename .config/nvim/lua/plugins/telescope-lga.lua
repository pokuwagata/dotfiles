return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    {
      "nvim-telescope/telescope-live-grep-args.nvim",
      -- This ensures the extension is loaded after telescope is initialized
      version = "^1.0.0",
    },
  },
  opts = function(_, opts)
    local lga_actions = require("telescope-live-grep-args.actions")
    -- Extend existing Telescope options with the extension settings
    opts.extensions = vim.tbl_deep_extend("force", opts.extensions or {}, {
      live_grep_args = {
        auto_quoting = true, -- enable/disable auto-quoting
        mappings = {
          i = {
            ["<C-k>"] = lga_actions.quote_prompt(),
            ["<C-i>"] = lga_actions.quote_prompt({ postfix = " --iglob " }),
          },
        },
      },
    })
  end,
  config = function(_, opts)
    -- Standard LazyVim Telescope config call
    require("telescope").setup(opts)
    -- Manually load the extension
    require("telescope").load_extension("live_grep_args")
  end,
  keys = {
    {
      "<leader>/",
      function()
        require("telescope").extensions.live_grep_args.live_grep_args()
      end,
      desc = "Live Grep (Args)",
    },
  },
}
