require("nightfox").setup({
	options = {
		dim_inactive = true,
		modules = {
			aerial = true,
			cmp = true,
			dashboard = true,
			notify = true,
			telescope = true,
			treesitter = true,
			tsrainbow = true,
			whichkey = true,
			neotree = true,
			gitsigns = true,
			native_lsp = {
				enable = true,
				background = true,
			},
		},
		styles = {
			comments = "italic",
			keywords = "bold",
			types = "italic,bold",
		},
	},
})
