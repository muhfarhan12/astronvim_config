return {
	timeout_ms = 10000,
	-- disabled = {
	-- 	"sumneko_lua",
	-- },
	filter = function(client)
		-- only enable null-ls for javascript files
		if vim.bo.filetype == "javascript" then
			return client.name == "null-ls"
		end
		if client.name == "sumneko_lua" then
			return client.name == "null-ls"
		end
		-- enable all other clients
		return true
	end,
}
