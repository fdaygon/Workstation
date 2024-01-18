-- setting <Space> as the leader
vim.g.mapleader = " "

-- normal vim commands rebinded 
vim.keymap.set("n", "<leader>fe", vim.cmd.Ex)

-- keybinds for telescope


vim.keymap.set('n', '<leader>ff', ":Telescope find_files<CR>", {})
vim.keymap.set('n', '<leader>gf', ":Telescope live_grep<CR>", {})

-- keybinds for go stuff
vim.keymap.set('n', '<leader>ajt', ":GoAddTag json<CR>", {})
vim.keymap.set('n', '<leader>ayt', ":GoAddTag yaml<CR>", {})
