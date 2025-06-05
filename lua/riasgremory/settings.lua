-- Leader keys
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Editor settings
vim.o.number = true
vim.o.relativenumber = true
vim.o.showmode = false
vim.o.breakindent = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.signcolumn = 'yes'
vim.o.updatetime = 250
vim.o.timeoutlen = 300
vim.o.splitright = true
vim.o.splitbelow = true
vim.o.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
vim.o.inccommand = 'split'
vim.o.cursorline = true
vim.o.scrolloff = 20
vim.o.confirm = true

-- Clipboard sync (scheduled for after startup)
vim.schedule(function()
  vim.o.clipboard = 'unnamedplus'
end)

-- Highlight on yank
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('riasgremory-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Transparent background helper
function Transparent(color)
  color = color or 'kanagawa-dragon'
  vim.cmd.colorscheme(color)
  vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
  vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
end

-- Call Transparent() on startup
Transparent()
