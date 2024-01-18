return {
	{
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
	    harpoon = require("harpoon").setup()
	    vim.keymap.set("n", "<leader>a", function() harpoon:list():append() end)
	    vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

	    vim.keymap.set("n", "<C-a>", function() harpoon:list():select(1) end)
	    vim.keymap.set("n", "<C-s>", function() harpoon:list():select(2) end)
	    vim.keymap.set("n", "<C-c>", function() harpoon:list():select(3) end)
	    vim.keymap.set("n", "<C-v>", function() harpoon:list():select(4) end)
    end
}
}
