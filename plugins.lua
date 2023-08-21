local cmp = require "cmp" -- For managing stuff for some reason
local overrides = require "custom.configs.overrides"

local plugins = {
  -- Setup Mason
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {},
    },
  },
  -- OVERRIDE plugin configs --
  {
    "williamboman/mason.nvim",
    opts = overrides.mason,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },
  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },
  -- LSP CONFIG --
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig" -- Ours
    end,
  },
  -- RIP NULL-LS RIP --
  {
    "jose-elias-alvarez/null-ls.nvim",
    ft = { "python", "lua" },
    opts = function()
      return require "custom.configs.null-ls"
    end,
  },
  -- RUST CONFIG --
  {
    "rust-lang/rust.vim",
    ft = "rust",
    init = function()
      vim.g.rustfmt_autosave = 1 -- Format on Save
    end,
  },
  -- CRATES Formatting --
  {
    "saecki/crates.nvim",
    ft = { "toml" },
    config = function(_, opts)
      local crates = require "crates"
      crates.setup(opts)
      require("cmp").setup.buffer {
        sources = { { name = "crates" } },
      }
      crates.show()
      require("core.utils").load_mappings "crates"
    end,
  },
  {
    "hrsh7th/nvim-cmp",
    opts = function()
      local M = require "plugins.configs.cmp"
      M.completion.completeopt = "menu,menuone,noselect"
      M.mapping["<CR>"] = cmp.mapping.confirm {
        behavior = cmp.ConfirmBehavior.Insert,
        select = false,
      }
      table.insert(M.sources, { name = "crates" })
      return M
    end,
  },
}
return plugins
