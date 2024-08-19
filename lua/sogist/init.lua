vim.opt.termguicolors = true -- for nvim-colorizer (example: #d2a23e)

require("sogist.lazy")
require("sogist.vim-settings")

local has = vim.fn.has
local is_mac = has("macunix")
local is_linux = has("unix")
local is_win = has("win32")
local is_wsl = has("wsl")

if is_linux then
	require("sogist.linux")
end
if is_mac then
	require("sogist.macos")
end
if is_win then
	require("sogist.windows")
end
if is_wsl then
	require("sogist.wsl")
end

print("Rip and tear until it is done.")
