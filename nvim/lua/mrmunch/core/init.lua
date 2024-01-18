require("mrmunch.core.keybinds")
require("mrmunch.core.lazy")
require("mrmunch.core.options")
vim.api.nvim_exec([[
  autocmd VimEnter * :Alpha
]], false)
