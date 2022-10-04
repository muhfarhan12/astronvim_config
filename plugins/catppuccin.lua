require("catppuccin").setup({
	term_colors = true,
	compile = {
		enabled = true,
		path = vim.fn.stdpath("cache") .. "/catppuccin",
	},
	styles = {
		comments = { "italic" },
		conditionals = { "italic" },
	},
	integrations = {
		treesitter = true,
		cmp = true,
		gitsigns = true,
		telescope = true,
		neotree = true,
		ts_rainbow = true,
		which_key = true,
		aerial = true,
		notify = true,
		indent_blankline = {
			enabled = true,
			colored_indent_levels = false,
		},
		native_lsp = {
			enabled = true,
			virtual_text = {
				errors = { "italic" },
				hints = { "italic" },
				warnings = { "italic" },
				information = { "italic" },
			},
			underlines = {
				errors = { "underline" },
				hints = { "underline" },
				warnings = { "underline" },
				information = { "underline" },
			},
		},
	},
})
