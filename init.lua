require("liminal.keybindings")
require("liminal.plugins")

vim.opt.nu = true
vim.opt.backup = false
vim.opt.writebackup = false

-- let g:python_host_prog = expand('~/.pyenv/versions/neovim2/bin/python')
vim.g.python3_host_prog = vim.fn.expand('~/.pyenv/versions/py3nvim/bin/python')

vim.g.loaded_ruby_provider = 0
vim.g.loaded_perl_provider = 0

-- vim.api.nvim_create_autocmd({ "BufWritePre" }, {
--     pattern = {"*"},
--     callback = function()
--       local save_cursor = vim.fn.getpos(".")
--       pcall(function() vim.cmd [[%s/\s\+$//e]] end)
--       vim.fn.setpos(".", save_cursor)
--     end,
-- })

