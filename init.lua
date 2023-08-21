vim.g.dap_virtual_text = true -- For debugger

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.colorcolumn = "100" -- For indicating that a line is getting long

-- -- In vain attempt at fixing lua-language-server on windows...
-- local appdata_path = vim.fn.expand("$APPDATA")
-- local user_dir = os.getenv("USERPROFILE")
-- print(user_dir)
--
-- local function addDirectoriesToPath(rootPath)
--     local separator = package.config:sub(1, 1)  -- Get the path separator for the current platform
--     local new_path_entries = {}
--
--     for dir in io.popen('dir /b /ad "' .. rootPath .. '"'):lines() do
--         table.insert(new_path_entries, rootPath .. separator .. dir)
--     end
--
--     local separator = ";"
--     local current_path = vim.env.PATH
--     if current_path then
--         local new_path = table.concat(new_path_entries, separator)
--         vim.env.PATH = current_path .. separator .. new_path
--     end
-- end
-- addDirectoriesToPath(user_dir .. "\\AppData\\Local\\nvim-data\\mason\\bin")
-- addDirectoriesToPath(user_dir .. "\\AppData\\Local\\nvim-data\\mason\\packages")
-- addDirectoriesToPath(user_dir .. "\\AppData\\Local\\nvim-data\\mason\\packages\\lua-language-server")
-- print(vim.env.PATH)
-- -- os.execute("timeout " .. "2")
