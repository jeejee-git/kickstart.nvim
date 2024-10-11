-- Session manager
return {
	"rmagatti/auto-session",
	lazy = false,
	keys = {
		-- Will use Telescope if installed or a vim.ui.select picker otherwise
		{ "<leader>wr", "<cmd>SessionSearch<CR>", desc = "Session search" },
		{ "<leader>ws", "<cmd>SessionSave<CR>", desc = "Save session" },
		{ "<leader>wa", "<cmd>SessionToggleAutoSave<CR>", desc = "Toggle autosave" },
	},

	---enables autocomplete for opts
	---@module "auto-session"
	---@type AutoSession.Config
	opts = {
		-- ⚠️ This will only work if Telescope.nvim is installed
		-- The following are already the default values, no need to provide them if these are already the settings you want.
		session_lens = {
			previewer = true,
			-- Can also set some Telescope picker options
			-- For all options, see: https://github.com/nvim-telescope/telescope.nvim/blob/master/doc/telescope.txt#L112
			theme_conf = {
				border = true,
				-- layout_config = {
				--   width = 0.8, -- Can set width and height as percent of window
				--   height = 0.5,
				-- },
			},
		},
		suppressed_dirs = { "~/", "~/Downloads", "/" },
		bypass_save_filetypes = { "oil" },
	},
}
