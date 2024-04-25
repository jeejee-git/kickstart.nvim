-- Glyphs pick extension for telescope
return {
	"ghassan0/telescope-glyph.nvim",
	dependencies = {
		"nvim-telescope/telescope.nvim",
	},
	config = function()
		require("telescope").load_extension("glyph")
	end,
	event = "VeryLazy",
}
