local colors = {
  bg = '#2b3339', -- Default Background
  bg_light = '#31353f', -- Lighter Background (Used for status bars, line number and folding marks)
  fg = '#abb2bf', -- Default Foreground, Caret, Delimiters, Operators
  fg_light = '#e9e8d2', -- Light Foreground
  fg_dark = '#5c6370', -- Dark Foreground (Used for status bars)
  gray = '#646568', -- Comments, Invisibles, Line Highlighting
  gray_light = "#6c7a96",
  blue = '#5e81ac', -- #87afd7
  blue_light = '#87d7ff',
  cyan = "#88c0d0",
  green = '#5faf5f',
  green_light = '#afd787',
  gold = '#ffd75f', -- #ffaf5f
  yellow = '#ffff87',
  orange = "#ebcb8b",
  red = '#bf616a',
  red_dark = '#d75f5f',
  pink = "#e85b7a",
  pink_dark = "#e44675",
  purple = "#b988b0",
}

colors.error = colors.red
colors.warn = colors.sand
colors.info = colors.green
colors.hint = colors.purple

colors.diff_add = colors.green
colors.diff_add_bg = "#394e3d"
colors.diff_change = colors.blue
colors.diff_change_bg = "#39495d"
colors.diff_remove = colors.red
colors.diff_remove_bg = "#4d2b2e"
colors.diff_text_bg = "#405d7e"

colors.active = "#353b49"
colors.float = "#3b4252"
colors.highlight = "#3f4758"
colors.highlight_dark = "#434c5e"
colors.selection = "#3a4248"

return colors
