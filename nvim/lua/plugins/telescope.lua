return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	dependencies = { "nvim-lua/plenary.nvim" },

	config = function()
		require("telescope").setup({
			defaults = {
				layout_config = {
					horizontal = { preview_cutoff = 0 },
				},
				file_ignore_patterns = {
					"^soft/",
					"^assets/",
					".*assets/*",
					"^vendor/",
					".*vendor/*",
					".*runtime/*",
					"^themes/",
					"^dist/",
					"^upload/",
					".*\\.bat",
				},
				border = true,
			},

			pickers = {
				colorscheme = { enable_preview = true },
			},
		})
	end,
}
