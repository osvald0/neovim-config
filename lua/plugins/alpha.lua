return {
	"goolord/alpha-nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},

	config = function()
		local alpha = require("alpha")

		local header = {
			type = "text",
			val = {
				[[                                                    ]],
				[[ ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ]],
				[[ ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ]],
				[[ ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ]],
				[[ ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ]],
				[[ ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ]],
				[[ ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ]],
				[[                                                    ]],
			},
			opts = {
				position = "center",
				hl = "AlphaHeader",
			},
		}

		local buttons = {
			type = "group",
			val = {
				{
					type = "button",
					val = "  New file",
					on_press = function()
						vim.cmd("ene | startinsert")
					end,
					opts = { position = "center" },
				},
				{
					type = "button",
					val = "󰈞  Find file",
					on_press = function()
						vim.cmd("Telescope find_files")
					end,
					opts = { position = "center" },
				},
				-- {
				-- 	type = "button",
				-- 	val = "  Recently used",
				-- 	on_press = function()
				-- 		vim.cmd("Telescope oldfiles")
				-- 	end,
				-- 	opts = { position = "center" },
				-- },
				{
					type = "button",
					val = "󰗼  Quit",
					on_press = function()
						vim.cmd("qa")
					end,
					opts = { position = "center" },
				},
			},
			opts = {
				spacing = 1,
			},
		}

		local footer = {
			type = "text",
			val = "✨ Neovim loaded. Enjoy your session.",
			opts = {
				position = "center",
				hl = "Comment",
			},
		}

		vim.api.nvim_set_hl(0, "AlphaHeader", { fg = "#c678dd" })

		alpha.setup({
			layout = {
				{ type = "padding", val = math.floor(vim.fn.winheight(0) / 6) },
				header,
				{ type = "padding", val = 2 },
				buttons,
				{ type = "padding", val = 1 },
				footer,
			},
			opts = {},
		})
	end,
}
