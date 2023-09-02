require("sogist.remap") -- This must come first because it defines leader key
require("sogist.lazy")
require("sogist.vim-settings")

local has = vim.fn.has
local is_mac = has "macunix"
local is_linux = has "unix"
local is_win = has "win32"
local is_wsl = has "wsl"

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

print("Hello from Sogist!")
