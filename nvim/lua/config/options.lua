-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local opt = vim.opt

-- tab键转换为 4 个空格
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4

opt.relativenumber = false

-- 高亮搜索结果
opt.hlsearch = true
-- 边输入边搜索
opt.incsearch = true

-- 新行对齐当前行，tab转换为空格
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true

-- 设置屏幕中间竖条
opt.colorcolumn = "120"

opt.termguicolors = true

-- 开启 Folding
vim.wo.foldmethod = 'expr'
vim.wo.foldexpr = 'nvim_treesitter#foldexpr()'
-- 默认不要折叠
-- https://stackoverflow.com/questions/8316139/how-to-set-the-default-to-unfolded-when-you-open-a-file
vim.wo.foldlevel = 99

