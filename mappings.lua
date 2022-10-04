return {
	n = {
		[";"] = { "<cmd>RnvimrToggle<cr>", desc = "Ranger" },
		["<leader>bb"] = { "<cmd>tabnew<cr>", desc = "New tab" },
		["<leader>bc"] = { "<cmd>BufferLinePickClose<cr>", desc = "Pick to close" },
		["<leader>bj"] = { "<cmd>BufferLinePick<cr>", desc = "Pick to jump" },
		["<leader>bt"] = { "<cmd>BufferLineSortByTabs<cr>", desc = "Sort by tabs" },
		["<leader>bl"] = { "<cmd>BufferLineCloseLeft<cr>", desc = "Close Left Tabs" },
		["<leader>br"] = { "<cmd>BufferLineCloseRight<cr>", desc = "Close Right Tabs" },
		["<leader>bn"] = { "<cmd>BufferLineCycleNext<cr>", desc = "Next" },
		["<leader>bp"] = { "<cmd>BufferLineCyclePrev<cr>", desc = "Previous" },
		["<leader>fs"] = {
			function()
				-- You can pass additional configuration to telescope to change theme, layout, etc.
				require("telescope.builtin").current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
					winblend = 10,
					previewer = false,
				}))
			end,
			desc = "Fuzzily search in current buffer",
		},
		["<leader>lc"] = { "<cmd>RunCode<cr>", desc = "Run Code" },
		-- quick save
		-- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
	},
}
