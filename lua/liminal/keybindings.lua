-- Bindings

vim.g.mapleader=" "
vim.g.maplocalleader=" "

vim.opt.backspace = '2'  -- Delete everything with backspace
vim.opt.showcmd = true

-- tab/indent stuff
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2 -- Tabs under smart indent
vim.opt.smarttab = true
vim.opt.expandtab = true
--vim.opt.cindent = true
--vim.opt.autoindent = true

-- Leader Commands

-- Edit vimrc with ,v
vim.keymap.set("n", "<leader>v", ":e ~/.config/nvim/init.vim<CR>", { silent = true })

-- Underline the current line with '='
-- nmap <silent> <leader>ul :t.\|s/./-/g\|:nohls<cr>

-- Format a json file with Python's built in json.tool.
-- from https://github.com/spf13/spf13-vim/blob/3.0/.vimrc#L390
vim.keymap.set("n", "<leader>jt", "<Esc>:%!python -m json.tool<CR><Esc>:set filetype=json<CR>")

