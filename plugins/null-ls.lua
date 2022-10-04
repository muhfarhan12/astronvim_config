return function(config) -- overrides `require("null-ls").setup(config)`
	-- config variable is the default configuration table for the setup functino call
	local null_ls = require("null-ls")
	-- Check supported formatters and linters
	-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
	-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
	config.sources = {
		-- Set a formatter
		null_ls.builtins.formatting.stylua,
		null_ls.builtins.formatting.prettier,
		-- null_ls.builtins.formatting.black,
	}
	return config -- return final config table to use in require("null-ls").setup(config)
end
