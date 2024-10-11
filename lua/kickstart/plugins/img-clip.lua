-- Paste image from clipboard
return {
	"HakonHarnes/img-clip.nvim",
	event = "VeryLazy",
	opts = {
		-- add options here
		-- or leave it empty to use the default settings

		-- filetype specific options
		filetypes = {
			markdown = {
				url_encode_path = true, ---@type boolean
				template = "![$FILE_NAME]($FILE_PATH)$CURSOR", ---@type string
				prompt_for_file_name = true,
			},
		},
	},
	keys = {
		-- suggested keymap
		{ "<leader>p", "<cmd>PasteImage<cr>", desc = "Paste image from system clipboard" },
	},
}
