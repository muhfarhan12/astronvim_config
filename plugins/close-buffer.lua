local close_buffers = require("close_buffers")
close_buffers.setup({
	filetype_ignore = {}, -- Filetype to ignore when running deletions
	file_glob_ignore = {}, -- File name glob pattern to ignore when running deletions (e.g. '*.md')
	file_regex_ignore = {}, -- File name regex pattern to ignore when running deletions (e.g. '.*[.]md')
	preserve_window_layout = { "this", "nameless" }, -- Types of deletion that should preserve the window layout
	next_buffer_cmd = nil, -- Custom function to retrieve the next buffer when preserving window layout
})
-- bdelete
close_buffers.delete({ type = "hidden", force = true }) -- Delete all non-visible buffers
close_buffers.delete({ type = "nameless" }) -- Delete all buffers without name
close_buffers.delete({ type = "this" }) -- Delete the current buffer
close_buffers.delete({ type = 1 }) -- Delete the specified buffer number
close_buffers.delete({ regex = ".*[.]md" }) -- Delete all buffers matching the regex

-- bwipeout
close_buffers.wipe({ type = "all", force = true }) -- Wipe all buffers
close_buffers.wipe({ type = "other" }) -- Wipe all buffers except the current focused
close_buffers.wipe({ type = "hidden", glob = "*.lua" }) -- Wipe all buffers matching the glob

