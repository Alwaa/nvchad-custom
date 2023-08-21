---@type ChadrcConfig
local M = {}
M.ui = { theme = "catppuccin" }
M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"
M.ui.nvdash = require "custom.dash"
M.ui.cmp = { style = "atom_colored" }
return M
