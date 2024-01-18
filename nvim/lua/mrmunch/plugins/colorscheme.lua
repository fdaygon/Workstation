return {
	{ "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {
  },
  config = function()
	  require("tokyonight").setup({
		  style = "night",
		  transparent = true,

	  })
  vim.api.nvim_command("colorscheme tokyonight")
  end
	}
}
