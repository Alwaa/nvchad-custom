local M = {}

-- SELF DEFINED MAPPINGS --
M.mine = {
  n = {
    ["<leader>rpr"] = { "<cmd> !cargo run <CR>", "Cargo Run" },
    ["<leader>rfr"] = { "<cmd> RustFmt <CR>", "Rust Format" },
  },
}

M.override = {
  n = {
    ["C-c"] = { "<Esc>", "Escape" },
    ["<leader>rn"] = { "" },
    ["<leader>n"] = { "<cmd> set rnu! <CR>", "Toggle relative number" },
  },
}

-- RUST CRATES --
M.crates = {
  plugin = true,
  n = {
    ["<leader>rcu"] = {
      function()
        require("crates").upgrade_all_crates()
      end,
      "update crates",
    },
  },
}

return M

-- DEBUGGER --
-- M.dap = {
--   plugin = true,
--   n = {
--     ["<leader>tdrr"] = { "<cmd> RustDebuggables <CR>" },
--     ["<leader>tdb"] = { "<cmd> DapToggleBreakpoint <CR>" },
--     ["<leader>tdus"] = {
--       function ()
--         local widgets = require('dap.ui.widgets');
--         local sidebar = widgets.sidebar(widgets.scopes);
--         sidebar.open();
--       end,
--       "Open debugging sidebar"
--     }
--   }
-- }
