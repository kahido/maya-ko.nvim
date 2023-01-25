local colors = require('maya-ko.colors')

local maya_ko = {
  normal = {
    a = { fg = colors.bg, bg = colors.blue_light, gui = "bold" },
    b = { fg = colors.cyan, bg = colors.highlight },
    c = { fg = colors.fg, bg = colors.active },
  },

  insert = {
    a = { fg = colors.bg, bg = colors.green_light, gui = "bold" },
    b = { fg = colors.green_light, bg = colors.highlight },
  },

  command = {
    a = { fg = colors.bg, bg = colors.yellow, gui = "bold" },
    b = { fg = colors.sand, bg = colors.highlight },
  },

  visual = {
    a = { fg = colors.bg, bg = colors.purple, gui = "bold" },
    b = { fg = colors.purple, bg = colors.highlight },
  },

  replace = {
    a = { fg = colors.bg, bg = colors.red, gui = "bold" },
    b = { fg = colors.red, bg = colors.highlight },
  },

  inactive = {
    a = { fg = colors.cyan, bg = colors.float, gui = "bold" },
    b = { fg = colors.cyan, bg = colors.float },
    c = { fg = colors.cyan, bg = colors.active },
  },
}

return maya_ko
