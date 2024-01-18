return {
	{
		'goolord/alpha-nvim',
		 event = "VimEnter",
		 dependencies = { 'nvim-tree/nvim-web-devicons' },
		 config = function ()
			 local status_ok, alpha = pcall(require, "alpha")
			 if not status_ok then
			 return
			 end
			 local alpha = require("alpha")
			 local dashboard = require("alpha.themes.dashboard")

                dashboard.section.header.val = {
  [[\'               ▄▄██████████▄▄             ',]],
  [[\'               ▀▀▀   ██   ▀▀▀             ',]],
  [[\'       ▄██▄   ▄▄████████████▄▄   ▄██▄     ',]],
  [[\'     ▄███▀  ▄████▀▀▀    ▀▀▀████▄  ▀███▄   ',]],
  [[\'    ████▄ ▄███▀              ▀███▄ ▄████  ',]],
  [[\'   ███▀█████▀▄████▄      ▄████▄▀█████▀███ ',]],
  [[\'   ██▀  ███▀ ██████      ██████ ▀███  ▀██ ',]],
  [[\'    ▀  ▄██▀  ▀████▀  ▄▄  ▀████▀  ▀██▄  ▀  ',]],
  [[\'       ███           ▀▀           ███     ',]],
  [[\'       ██████████████████████████████     ',]],
  [[\'   ▄█  ▀██  ███   ██    ██   ███  ██▀  █▄ ',]],
  [[\'   ███  ███ ███   ██    ██   ███▄███  ███ ',]],
  [[\'   ▀██▄████████   ██    ██   ████████▄██▀ ',]],
  [[\'    ▀███▀ ▀████   ██    ██   ████▀ ▀███▀  ',]],
  [[\'     ▀███▄  ▀███████    ███████▀  ▄███▀   ',]],
  [[\'       ▀███    ▀▀██████████▀▀▀   ███▀     ',]],
  [[\'         ▀    ▄▄▄    ██    ▄▄▄    ▀       ',]],
  [[\'               ▀████████████▀             ',]],
		}

		dashboard.section.buttons.val = {
			dashboard.button("e", "New file", "<cmd>ene <CR>"),
			dashboard.button("SPC f f", "Find file"),
			dashboard.button("CTRL e", "Harpoon files"),
			dashboard.button("SPC g f", "Find word"),
			dashboard.button("SPC s b", "Open buffers"),
		}
		_Gopts = {
			position = "center",
			hl = "Type",
			-- wrap = "overflow";
		}

		local function footer()
			return "There is nothing impossible to they who will try."
		end

		dashboard.section.footer.val = footer()

		dashboard.opts.opts.noautocmd = true
		alpha.setup(dashboard.opts)
		 end
	}
}
