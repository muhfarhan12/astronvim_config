return {
	["folke/tokyonight.nvim"] = {},
	["nvim-neorg/neorg"] = {
		tag = "0.0.12",
		config = function()
			require("user.plugins.neorg")
		end,
		requires = "nvim-neorg/neorg-telescope",
	},
	["kevinhwang91/rnvimr"] = {
		cmd = "RnvimrToggle",
		config = function()
			require("user.plugins.ranger")
		end,
	},
	["dstein64/vim-startuptime"] = {},

	-- ["windwp/nvim-autopairs"] = { disable = true },
	-- {},
}
