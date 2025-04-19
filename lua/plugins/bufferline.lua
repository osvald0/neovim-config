return {
	"akinsho/bufferline.nvim",
	dependencies = {
		"moll/vim-bbye",
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("bufferline").setup({
			options = {
				mode = "buffers",
				themable = true,
				offsets = {
					{
						filetype = "neo-tree",
						text = "",
						text_align = "center",
						separator = true,
					},
				},
			},
		})
	end,
}
