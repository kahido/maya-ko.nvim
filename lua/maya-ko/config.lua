local config = {}

-- default options
config.options = {
  -- Main options --
  transparent = false, -- don't set backgroud

  -- Changing Formats --
  styles = {
    comments = 'none',
    keywords = 'none',
    functions = 'none',
    strings = 'none',
    variables = 'none',
    diagnostics = 'none',
  },

  -- Custom Highlights --
  custom_highlights = {}, -- Overwrite default highlight groups
  custom_colors = {}, -- Overwrite default colors

  -- Plugins Related --
  diagnostics = {
    darker = true, -- darker colors for diagnostic
    undercurl = true,   -- use undercurl for diagnostics
    background = true,    -- use background color for virtual text
  },
}

function config.set_options(opts)
  config.options = vim.tbl_deep_extend("force", config.options, opts or {})
end

return config
