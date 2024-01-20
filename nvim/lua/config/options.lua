-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt
-- Tabs and windows

-- Splitting a window will put the new window below the current one
opt.splitbelow = true
-- Splitting a window will put the new window right of the current one
opt.splitright = true

-- Aligning stuff within window

-- Number of column to be highlighted
-- Only available when compiled with the +syntax feature
opt.colorcolumn = "81"
-- Highlight the screen line of the cursor
-- Only available when compiled with the +syntax feature
opt.cursorline = true
-- Minimal number of lines to keep above and below the cursor
-- Typewriter mode = keep current line in the center
opt.scrolloff = 999
-- Maximum width of text that is being inserted
--Longer lines will be broken after white space to get this width
opt.textwidth = 80
-- Wrap long lines
opt.wrap = true

-- Search

-- Ignore case in search patterns
opt.ignorecase = true
-- Override the 'ignorecase' if the search pattern contains upper case characters
opt.smartcase = true

-- Other

-- Show (partial) command in the last line of the screen
-- Comment this line if your terminal is slow
-- Only available when compiled with the +cmdline_info feature
opt.showcmd = true

-- Leader shortcuts

vim.g.mapleader = ","
vim.g.loaded_clipboard_provider = 1
-- ,p
-- Toggle the 'paste' option
opt.pastetoggle = "<Leader>p"

-- ,s
-- Shortcut for :%s//
vim.keymap.set("n", "<leader>ss", ":%s//<left>")

-- ,v
-- Open this file in a new tab
vim.keymap.set("n", "<leader>v", ":tabedit ~/.config/nvim/lua/config/options.lua<cr>")

-- ,c
vim.keymap.set("n", "<leader>c", "gcc")

-- Other mappings
vim.keymap.set("n", ";", ":")
vim.keymap.set("n", "<space>", "<pagedown>")
-- Create a new window relative to the current one
vim.keymap.set("n", "<leader><left>", ":leftabove vnew<cr>")
vim.keymap.set("n", "<leader><right>", ":rightbelow vnew<cr>")
vim.keymap.set("n", "<leader><up>", ":leftabove new<cr>")
vim.keymap.set("n", "<leader><down>", ":rightbelow new<cr>")
-- Switch tabs with <Tab>
vim.keymap.set("n", "<tab>", "gt")
vim.keymap.set("n", "<s-tab>", "gT")
