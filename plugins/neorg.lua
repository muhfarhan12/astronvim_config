require("neorg").setup {
  load = {
    ["core.defaults"] = {},
    ["core.norg.dirman"] = {
      config = {
        workspaces = {
          work = "~/notes/work",
          home = "~/notes/home",
          belajar = "~/notes/belajar",
          journal = "~/notes/journal",
          gtd = "~/notes/gtd",
        },
      },
    },
    ["core.norg.concealer"] = {
      config = { -- Note that this table is optional and doesn't need to be provided
        -- Configuration here
      },
    },
    ["core.norg.completion"] = {
      config = {
        engine = "nvim-cmp", -- Note that this table is optional and doesn't need to be provided
        -- Configuration here
      },
    },
    ["core.norg.journal"] = {
      config = {
        workspaces = {
          journal = "~/notes/journal",
        },
      },
    },
    ["core.integrations.nvim-cmp"] = {
      config = { -- Note that this table is optional and doesn't need to be provided
        -- Configuration here
      },
    },
    ["core.integrations.telescope"] = {
      config = {},
    },
    ["core.gtd.base"] = {
      config = {
        workspace = "gtd",
      },
    },
  },
}

local neorg_callbacks = require "neorg.callbacks"

neorg_callbacks.on_event("core.keybinds.events.enable_keybinds", function(_, keybinds)
  -- Map all the below keybinds only when the "norg" mode is active
  keybinds.map_event_to_mode("norg", {
    n = { -- Bind keys in normal mode
      { "<C-s>", "core.integrations.telescope.find_linkable" },
    },

    i = { -- Bind in insert mode
      { "<C-l>", "core.integrations.telescope.insert_link" },
    },
  }, {
    silent = true,
    noremap = true,
  })
end)
