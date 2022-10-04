-- this is a config example
require("code_runner").setup({
	mode = "float",
	focus = true,
	startinsert = true,
	term = {
		position = "vert",
		size = 8,
	},
	float = {
		border = "rounded",
	},
	filetype = {
		java = "cd $dir && javac $fileName && java $fileNameWithoutExt",
		python = "python3 -u",
		typescript = "deno run",
		rust = "cd $dir && rustc $fileName && $dir/$fileNameWithoutExt",
	},
	filetype_path = vim.fn.expand("~/.config/nvim/code_runner.json"),
	project_path = vim.fn.expand("~/.config/nvim/project_manager.json"),
})
