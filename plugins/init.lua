return {
	["folke/tokyonight.nvim"] = { disable = true },
	["nvim-neorg/neorg"] = {
		ft = "norg",
		-- run = ":Neorg sync-parsers",
		after = "nvim-treesitter",
		-- tag = "0.0.15",
		config = function()
			require("user.plugins.neorg")
		end,
		requires = {
			"nvim-lua/plenary.nvim",
			"nvim-neorg/neorg-telescope",
		},
	},
	["kevinhwang91/rnvimr"] = {
		cmd = "RnvimrToggle",
		config = function()
			require("user.plugins.ranger")
		end,
	},
	["dstein64/vim-startuptime"] = {
		cmd = "StartupTime",
	},
	["catppuccin/nvim"] = {
		disable = true,
		as = "catppuccin",
		config = function()
			require("user.plugins.catppuccin")
		end,
	},
	["EdenEast/nightfox.nvim"] = {
		config = function()
			require("user.plugins.nightfox")
		end,
	},
	-- ["michaelb/sniprun"] = {
	-- 	run = "bash ./install.sh",
	-- 	cmd = {
	-- 		"SnipRun",
	-- 		"'<,'>SnipRun",
	-- 		"SnipInfo",
	-- 	},
	-- 	config = function()
	-- 		require("user.plugins.sniprun")
	-- 	end,
	-- },
	["CRAG666/code_runner.nvim"] = {
		requires = "nvim-lua/plenary.nvim",
		cmd = {
			"RunCode",
			"RunFile",
		},
		config = function()
			require("user.plugins.code_runner")
		end,
	},
	["kazhala/close-buffers.nvim"] = {
		cmd = {
			"BDelete",
			"BWipeout",
		},
		config = function()
			require("user.plugins.close-buffer")
		end,
	},
	["folke/trouble.nvim"] = {
		cmd = {
			"Trouble",
			"TroubleToggle",
		},
		config = function()
			require("user.plugins.trouble")
		end,
	},
	-- ["declancm/cinnamon.nvim"] = { disable = true },
	-- ["windwp/nvim-autopairs"] = { disable = true },
	-- ["NvChad/nvim-colorizer.lua"] = { disable = true },
	-- {},
}
