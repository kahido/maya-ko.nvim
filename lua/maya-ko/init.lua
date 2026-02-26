-- Colorscheme name:        maya-ko.nvim
-- Description:             A Neovim theme.
-- Author:                  Kahido
-- Website:                 https://github.com/kahido/maya-ko.nvim

local maya_ko = {}

function maya_ko.setup(options)
  local config = require("maya-ko.config")
  config.set_options(options)

  local highlights = require("maya-ko.highlights")
  highlights.load()
end

return maya_ko
