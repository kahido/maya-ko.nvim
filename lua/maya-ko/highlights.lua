local options = require('maya-ko.config').options
local colors = require('maya-ko.colors')

local effect = {
  namespace = { fg = colors.green_light },
  punctuation = { fg = colors.blue },
  keyword_return = { fg = colors.gold },
  string_escape = { fg = colors.gold, fmt = options.styles.strings },
  clean = { fg = colors.fg, bg = options.transparent and 'none' or colors.bg, fmt = 'none' },
}

local hl = { langs = {}, plugins = {} }

hl.common = {
  Normal = { fg = colors.fg, bg = options.transparent and 'none' or colors.bg },
  Terminal = { fg = colors.fg, bg = options.transparent and 'none' or colors.bg },
  EndOfBuffer = { fg = colors.bg, bg = options.transparent and 'none' or colors.bg },
  FoldColumn = { fg = colors.fg, bg = options.transparent and 'none' or colors.bg_light },
  Folded =  {fg = colors.fg, bg = options.transparent and 'none' or colors.bg_light },
  SignColumn = { fg = colors.fg, bg = options.transparent and 'none' or colors.bg },
  ToolbarLine = { fg = colors.fg },
  Cursor =  {fmt = "reverse" },
  vCursor = { fmt = "reverse" },
  iCursor = { fmt = "reverse" },
  lCursor = { fmt = "reverse" },
  CursorIM = { fmt = "reverse" },
  CursorColumn = { bg = colors.bg_light },
  CursorLine = { bg = colors.bg_light },
  ColorColumn = { bg = colors.bg_light },
  CursorLineNr = { fg = colors.fg },
  LineNr = { fg = colors.fg_dark },
  Conceal = { fg = colors.green_light, bg = colors.bg },
  DiffAdd = { fg = colors.blue_light, bg = colors.bg },
  DiffChange = { fg = colors.gray, bg = colors.bg },
  DiffDelete = { fg = colors.gold, bg = colors.bg },
  DiffText = { fg = colors.green_light, bg = colors.bg },
  DiffAdded = { fg = colors.blue_light, bg = colors.bg },
  DiffRemoved = { fg = colors.gold, bg = colors.bg },
  DiffFile = { fg = colors.gold, bg = colors.bg },
  DiffIndexLine = { fg = colors.green_light, bg = colors.bg },
  Directory = { fg = colors.green_light },
  ErrorMsg = { fg = colors.gold, fmt = "bold" },
  WarningMsg = { fg = colors.gold, fmt = "bold" },
  MoreMsg = { fg = colors.blue_light, fmt = "bold" },
  IncSearch = { fg = colors.bg_light, bg = colors.yellow },
  Search = { fg = colors.bg_light, bg = colors.blue },
  Substitute = { fg = colors.bg_light, bg = colors.blue },
  MatchParen = { bg = colors.gray },
  NonText = { fg = colors.gray },
  Whitespace = { fg = colors.fg_dark },
  SpecialKey = { fg = colors.gray },
  Pmenu = { fg = colors.fg, bg = colors.bg_light },
  PmenuSbar = { fg = colors.fg, bg = colors.bg_light },
  PmenuSel = { fg = colors.bg_light, bg = colors.fg },
  WildMenu = { fg = colors.gold, bg = colors.blue },
  PmenuThumb = { fg = colors.fg, bg = colors.bg_light },
  Question = { fg = colors.green_light },
  SpellBad = { fmt = "undercurl", sp = colors.gold },
  SpellCap = { fmt = "undercurl", sp = colors.green_light },
  SpellLocal = { fmt = "undercurl", sp = colors.green },
  SpellRare = { fmt = "undercurl", sp = colors.red },
  StatusLine = { fg = colors.fg, bg = colors.selection },
  StatusLineTerm = { fg = colors.fg, bg = colors.selection },
  StatusLineNC = { fg = colors.fg_dark, bg = colors.bg_light },
  StatusLineTermNC = { fg = colors.fg_dark, bg = colors.bg_light },
  TabLine = { fg = colors.gray, bg = colors.bg_light },
  TabLineFill = { fg = colors.gray, bg = colors.bg_light },
  TabLineSel =  { fg = colors.blue_light, bg = colors.bg_light },
  VertSplit = { fg = colors.fg, bg = colors.bg },
  Visual = { bg = colors.selection },
  VisualNOS = { fg = colors.blue_light, bg = colors.selection, fmt = "underline" },
  QuickFixLine = { bg = colors.bg_light, fmt = "underline" },
  Debug = { fg = colors.gold },
  debugPC = { fg = colors.gold },
  debugBreakpoint = { fg = colors.gold },
  ToolbarButton = { fg = colors.bg },
  FloatBorder = { fg = colors.fg, bg = colors.bg_light },
  NormalFloat = { fg = colors.fg, bg = colors.bg_light },
}

hl.syntax_clean = {
  String = effect.clean,
  Character = effect.clean,
  Number = effect.clean,
  Float = effect.clean,
  Boolean = effect.clean,
  Type = effect.clean,
  Structure = effect.clean,
  StorageClass = effect.clean,
  Identifier = effect.clean,
  Constant = effect.clean,
  PreProc = effect.clean,
  PreCondit = effect.clean,
  Include = effect.clean,
  Keyword = effect.clean,
  Define = effect.clean,
  Typedef = effect.clean,
  Exception = effect.clean,
  Conditional = effect.clean,
  Repeat = effect.clean,
  Statement = effect.clean,
  Macro = effect.clean,
  Error = effect.clean,
  Label = effect.clean,
  Special = effect.clean,
  SpecialChar = effect.clean,
  Function = effect.clean,
  Operator = effect.clean,
  Title = effect.clean,
  Tag = effect.clean,
  Delimiter = effect.clean,
  Comment = effect.clean,
  SpecialComment = effect.clean,
  Todo = effect.clean
}

hl.syntax = {
  String = { fg = colors.green, fmt = options.styles.strings },
  Character = { fg = colors.green_light },
  Number = { fg = colors.green_light },
  Float = { fg = colors.green_light },
  Boolean = { fg = colors.green_light },
  -- Type = { fg = colors.blue },
  -- Structure = { fg = colors.red },
  -- StorageClass = { fg = colors.blue },
  Identifier = { fg = colors.fg_light, fmt = options.styles.variables },
  Constant = { fg = colors.yellow },
  PreProc = { fg = colors.red },
  PreCondit = { fg = colors.red },
  Include = { fg = colors.red },
  Keyword = { fg = colors.blue, fmt = options.styles.keywords },
  Define = { fg = colors.red },
  -- Typedef = { fg = colors.blue },
  Exception = { fg = colors.red },
  Conditional = { fg = colors.gold, fmt = options.styles.keywords },
  Repeat = { fg = colors.gold, fmt = options.styles.keywords },
  Statement = { fg = colors.gold, fmt = options.styles.keywords },
  Macro = { fg = colors.red },
  Error = { fg = colors.error },
  Label = { fg = colors.red },
  Special = { fg = colors.red },
  SpecialChar = { fg = colors.red },
  Function = { fg = colors.blue_light, fmt = options.styles.functions },
  Operator = { fg = colors.fg_light, fmt = options.styles.variables },
  -- Title = { fg = colors.green_light },
  -- Tag = { fg = colors.blue },
  Delimiter = { fg = colors.red },
  Comment = { fg = colors.gray, fmt = options.styles.comments },
  SpecialComment = { fg = colors.gray, fmt = options.styles.comments },
  Todo = { fg = colors.blue, bg = colors.bg_light, fmt = options.styles.comments }
}

if vim.api.nvim_call_function("has", { "nvim-0.8" }) == 1 then
  hl.treesitter = {
    -- ["@annotation"] = hl.common.Normal,
    ["@attribute"] = hl.syntax.Label,
    ["@boolean"] = hl.syntax.Boolean,
    ["@character"] = hl.syntax.Character,
    ["@comment"] = hl.syntax.Comment,
    ["@conditional"] = hl.syntax.Conditional,
    ["@constant"] = hl.syntax.Constant,
    ["@constant.builtin"] = hl.syntax.Constant,
    ["@constant.macro"] = hl.syntax.Macro,
    ["@constructor"] = hl.syntax.Function,
    ["@error"] = hl.syntax.Error,
    ["@exception"] = hl.syntax.Exception,
    ["@field"] = { fg = colors.pink },
    ["@float"] = hl.syntax.Float,
    ["@function"] = hl.syntax.Function,
    ["@function.builtin"] = hl.syntax.Function,
    ["@function.macro"] = hl.syntax.Macro,
    ["@include"] = hl.syntax.Include,
    ["@keyword"] = hl.syntax.Keyword,
    -- ["@keyword.function"] = hl.syntax.Keyword,
    -- ["@keyword.operator"] = hl.syntax.Keyword,
    ["@keyword.return"] = effect.keyword_return,
    ["@define"] = hl.syntax.Define,
    -- ["@label"] = hl.syntax.Label,
    ["@method"] = hl.syntax.Function,
    ["@namespace"] = effect.namespace,
    -- ["@none"] = hl.common.Normal,
    ["@number"] = hl.syntax.Number,
    ["@operator"] = hl.syntax.Operator,
    ["@parameter"] = hl.syntax.Operator,
    -- ["@parameter.reference"] = hl.syntax.Operator,
    -- ["@property"] = hl.syntax.Operator,
    -- ["@punctuation.delimiter"] = hl.syntax.Delimiter,
    ["@punctuation.bracket"] = effect.punctuation,
    ["@punctuation.special"] = effect.punctuation,
    ["@repeat"] = hl.syntax.Repeat,
    ["@string"] = hl.syntax.String,
    ["@string.regex"] = effect.string_escape,
    ["@string.escape"] = effect.string_escape,
    -- ["@symbol"] = hl.syntax.String,
    -- ["@tag"] = hl.syntax.Tag,
    -- ["@tag.delimiter"] = hl.syntax.Delimiter,
    -- ["@text"] = hl.common.Normal,
    -- ["@text.strong"] = {fg = c.fg, fmt = 'bold'},
    -- ["@text.emphasis"] = {fg = c.fg, fmt = 'italic'},
    -- ["@text.underline"] = {fg = c.fg, fmt = 'underline'},
    -- ["@text.strike"] = {fg = c.fg, fmt = 'strikethrough'},
    -- ["@text.title"] = {fg = c.orange, fmt = 'bold'},
    -- ["@text.literal"] = TODO
    -- ["@text.uri"] = TODO
    -- ["@text.math"] = TODO
    -- ["@text.reference"] = TODO
    -- ["@text.enviroment"] = TODO
    -- ["@text.enviroment.name"] = TODO
    -- ["@note"] = hl.common.Normal,
    -- ["@warning"] = hl.common.Normal,
    -- ["@danger"] = hl.common.Normal,
    -- ["@type"] = hl.syntax.Type,
    ["@type.builtin"] = { fg = colors.pink },
    ["@type.qualifier"] = { fg = colors.gold },
    -- ["@variable"] = hl.syntax.Character,
    -- ["@variable.builtin"] = hl.syntax.Character,
  }
else
  hl.treesitter = {
    -- TSAnnotation = TODO
    TSAttribute = hl.syntax.Label,
    TSBoolean = hl.synatx.Boolean,
    TSCharacter = hl.syntax.Character,
    TSComment = hl.syntax.Comment,
    TSConditional = hl.syntax.Conditional,
    TSConstant = hl.syntax.Constant,
    TSConstBuiltin = hl.syntax.Constant,
    TSConstMacro = hl.syntax.Macro,
    TSConstructor = hl.syntax.Function,
    TSError = hl.syntax.Error,
    TSException = hl.syntax.Exception,
    TSField = { fg = colors.pink },
    TSFloat = hl.syntax.Float,
    TSFunction = hl.syntax.Function,
    TSFuncBuiltin = hl.syntax.Function,
    TSFuncMacro = hl.syntax.Macro,
    TSInclude = hl.syntax.Include,
    TSKeyword = hl.syntax.Keyword,
    -- TSKeywordFunction = hl.syntax.Keyword,
    -- TSKeywordOperator = hl.syntax.Keyword,
    -- TSLabel = hl.syntax.Label,
    TSMethod = hl.syntax.Function,
    TSNamespace = effect.namespace,
    -- TSNone = hl.common.Normal,
    TSNumber = hl.syntax.Number,
    TSOperator = hl.syntax.Operator,
    TSParameter = hl.syntax.Operator,
    -- TSParameterReference = TODO
    -- TSProperty = TODO
    -- TSPunctDelimiter = TODO
    TSPunctBracket = effect.punctuation,
    TSPunctSpecial = effect.punctuation,
    TSRepeat = hl.syntax.Repeat,
    TSString = hl.syntax.String,
    TSStringRegex = effect.string_escape,
    TSStringEscape = effect.string_escape,
    -- TSSymbol = TODO
    -- TSTag = TODO
    -- TSTagDelimiter = TODO
    -- TSText = TODO
    -- TSStrong = {fg = c.fg, fmt = 'bold'},
    -- TSEmphasis = {fg = c.fg, fmt = 'italic'},
    -- TSUnderline = {fg = c.fg, fmt = 'underline'},
    -- TSStrike = {fg = c.fg, fmt = 'strikethrough'},
    -- TSTitle = {fg = c.orange, fmt = 'bold'},
    -- TSLiteral = TODO
    -- TSURI = {fg = c.cyan, fmt = 'underline'},
    -- TSMath = TODO
    -- TSTextReference = TODO
    -- TSEnviroment = TODO
    -- TSEnviromentName = TODO
    -- TSNote = TODO
    -- TSWarning = TODO
    -- TSDanger = TODO
    -- TSType = TODO
    TSTypeBuiltin = { fg = colors.pink },
    -- TSVariable = {fg = c.fg, fmt = options.styles.variables},
    -- TSVariableBuiltin = {fg = c.red, fmt = options.styles.variables},
  }
end

hl.plugins.lsp = {
  -- used for "Error" diagnostic virtual text
  LspDiagnosticsDefaultError = { fg = colors.error },
  -- used for "Error" diagnostic signs in sign column
  LspDiagnosticsSignError = { fg = colors.error },
  -- used for "Error" diagnostic messages in the diagnostics float
  LspDiagnosticsFloatingError = { fg = colors.error },
  -- Virtual text "Error"
  LspDiagnosticsVirtualTextError = { fg = colors.error },
  -- used to underline "Error" diagnostics.
  LspDiagnosticsUnderlineError = { fmt = options.styles.diagnostics, sp = colors.error },
  -- used for "Warning" diagnostic signs in sign column
  LspDiagnosticsDefaultWarning = { fg = colors.warn },
  -- used for "Warning" diagnostic signs in sign column
  LspDiagnosticsSignWarning = { fg = colors.warn },
  -- used for "Warning" diagnostic messages in the diagnostics float
  LspDiagnosticsFloatingWarning = { fg = colors.warn },
  -- Virtual text "Warning"
  LspDiagnosticsVirtualTextWarning = { fg = colors.warn },
  -- used to underline "Warning" diagnostics.
  LspDiagnosticsUnderlineWarning = { fmt = options.styles.diagnostics, sp = colors.warn },
  -- used for "Information" diagnostic virtual text
  LspDiagnosticsDefaultInformation = { fg = colors.info },
  -- used for "Information" diagnostic signs in sign column
  LspDiagnosticsSignInformation = { fg = colors.info },
  -- used for "Information" diagnostic messages in the diagnostics float
  LspDiagnosticsFloatingInformation = { fg = colors.info },
  -- Virtual text "Information"
  LspDiagnosticsVirtualTextInformation = { fg = colors.info },
  -- used to underline "Information" diagnostics.
  LspDiagnosticsUnderlineInformation = { fmt = options.styles.diagnostics, sp = colors.info },
  -- used for "Hint" diagnostic virtual text
  LspDiagnosticsDefaultHint = { fg = colors.hint },
  -- used for "Hint" diagnostic signs in sign column
  LspDiagnosticsSignHint = { fg = colors.hint },
  -- used for "Hint" diagnostic messages in the diagnostics float
  LspDiagnosticsFloatingHint = { fg = colors.hint },
  -- Virtual text "Hint"
  LspDiagnosticsVirtualTextHint = { fg = colors.hint },
  -- used to underline "Hint" diagnostics.
  LspDiagnosticsUnderlineHint = { fmt = options.styles.diagnostics, sp = colors.hint },
  -- used for highlighting "text" references
  LspReferenceText = { fmt = "underline", sp = colors.yellow },
  -- used for highlighting "read" references
  LspReferenceRead = { fmt = "underline", sp = colors.yellow },
  -- used for highlighting "write" references
  LspReferenceWrite = { fmt = "underline", sp = colors.yellow },

  LspSignatureActiveParameter = { fg = "none", bg = colors.highlight_dark, fmt = "bold" },
  LspCodeLens = { fg = colors.light_gray },
  LspCodeLensSeparator = { fg = colors.gray },

  LspCxxHlGroupEnumConstant = colors.orange,
  LspCxxHlGroupMemberVariable = colors.orange,
  LspCxxHlGroupNamespace = colors.blue,
  LspCxxHlSkippedRegion = colors.gray,
  LspCxxHlSkippedRegionBeginEnd = colors.red,
}

hl.plugins.lsp.DiagnosticError = hl.plugins.lsp.LspDiagnosticsDefaultError
hl.plugins.lsp.DiagnosticWarn = hl.plugins.lsp.LspDiagnosticsDefaultWarning
hl.plugins.lsp.DiagnosticInfo = hl.plugins.lsp.LspDiagnosticsDefaultInformation
hl.plugins.lsp.DiagnosticHint = hl.plugins.lsp.LspDiagnosticsDefaultHint
hl.plugins.lsp.DiagnosticVirtualTextWarn = hl.plugins.lsp.LspDiagnosticsVirtualTextWarning
hl.plugins.lsp.DiagnosticUnderlineWarn = hl.plugins.lsp.LspDiagnosticsUnderlineWarning
hl.plugins.lsp.DiagnosticFloatingWarn = hl.plugins.lsp.LspDiagnosticsFloatingWarning
hl.plugins.lsp.DiagnosticSignWarn = hl.plugins.lsp.LspDiagnosticsSignWarning
hl.plugins.lsp.DiagnosticVirtualTextError = hl.plugins.lsp.LspDiagnosticsVirtualTextError
hl.plugins.lsp.DiagnosticUnderlineError = hl.plugins.lsp.LspDiagnosticsUnderlineError
hl.plugins.lsp.DiagnosticFloatingError = hl.plugins.lsp.LspDiagnosticsFloatingError
hl.plugins.lsp.DiagnosticSignError = hl.plugins.lsp.LspDiagnosticsSignError
hl.plugins.lsp.DiagnosticVirtualTextInfo = hl.plugins.lsp.LspDiagnosticsVirtualTextInformation
hl.plugins.lsp.DiagnosticUnderlineInfo = hl.plugins.lsp.LspDiagnosticsUnderlineInformation
hl.plugins.lsp.DiagnosticFloatingInfo = hl.plugins.lsp.LspDiagnosticsFloatingInformation
hl.plugins.lsp.DiagnosticSignInfo = hl.plugins.lsp.LspDiagnosticsSignInformation
hl.plugins.lsp.DiagnosticVirtualTextHint = hl.plugins.lsp.LspDiagnosticsVirtualTextHint
hl.plugins.lsp.DiagnosticUnderlineHint = hl.plugins.lsp.LspDiagnosticsUnderlineHint
hl.plugins.lsp.DiagnosticFloatingHint = hl.plugins.lsp.LspDiagnosticsFloatingHint
hl.plugins.lsp.DiagnosticSignHint = hl.plugins.lsp.LspDiagnosticsSignHint

hl.plugins.hop = {
  HopNextKey = { fg = colors.fg_light, fmt = "bold" },
  HopNextKey1 = { fg = colors.cyan, fmt = "bold" },
  HopNextKey2 = { fg = colors.blue },
  HopUnmatched = { fg = colors.gray },
}

hl.plugins.cmp = {
  CmpItemAbbr = { fg = colors.fg },
  CmpItemAbbrDeprecated = { fg = colors.fg },
  CmpItemAbbrMatch = { fg = colors.blue, fmt = "bold" },
  CmpItemAbbrMatchFuzzy = { fg = colors.blue, underline = true },
  CmpItemMenu = { fg = colors.gray_light },
  CmpItemKindText = { fg = colors.orange },
  CmpItemKindMethod = { fg = colors.blue },
  CmpItemKindFunction = { fg = colors.blue },
  CmpItemKindConstructor = { fg = colors.yellow },
  CmpItemKindField = { fg = colors.blue },
  CmpItemKindClass = { fg = colors.yellow },
  CmpItemKindInterface = { fg = colors.yellow },
  CmpItemKindModule = { fg = colors.blue },
  CmpItemKindProperty = { fg = colors.blue },
  CmpItemKindValue = { fg = colors.orange },
  CmpItemKindEnum = { fg = colors.yellow },
  CmpItemKindKeyword = { fg = colors.purple },
  CmpItemKindSnippet = { fg = colors.green },
  CmpItemKindFile = { fg = colors.blue },
  CmpItemKindEnumMember = { fg = colors.cyan },
  CmpItemKindConstant = { fg = colors.orange },
  CmpItemKindStruct = { fg = colors.yellow },
  CmpItemKindTypeParameter = { fg = colors.yellow },
}

hl.plugins.diff = {
  diffAdded = { fg = colors.diff_add },
  diffRemoved = { fg = colors.diff_remove },
  diffChanged = { fg = colors.diff_change },
  diffOldFile = { fg = colors.yellow },
  diffNewFile = { fg = colors.orange },
  diffFile = { fg = colors.blue },
  diffLine = { fg = colors.gray_light },
  diffIndexLine = { fg = colors.purple },
}

hl.plugins.gitsigns = {
  GitSignsAdd = { fg = colors.diff_add }, -- diff mode: Added line |diff.txt|
  GitSignsAddNr = { fg = colors.diff_add }, -- diff mode: Added line |diff.txt|
  GitSignsAddLn = { fg = colors.diff_add }, -- diff mode: Added line |diff.txt|
  GitSignsChange = { fg = colors.diff_change }, -- diff mode: Changed line |diff.txt|
  GitSignsChangeNr = { fg = colors.diff_change }, -- diff mode: Changed line |diff.txt|
  GitSignsChangeLn = { fg = colors.diff_change }, -- diff mode: Changed line |diff.txt|
  GitSignsDelete = { fg = colors.diff_remove }, -- diff mode: Deleted line |diff.txt|
  GitSignsDeleteNr = { fg = colors.diff_remove }, -- diff mode: Deleted line |diff.txt|
  GitSignsDeleteLn = { fg = colors.diff_remove }, -- diff mode: Deleted line |diff.txt|
}

hl.plugins.telescope = {
  TelescopeNormal = { fg = colors.fg, bg = colors.bg },
  TelescopeBorder = { fg = colors.fg },
  TelescopePromptBorder = { fg = colors.blue_light },
  TelescopeResultsBorder = { fg = colors.blue_light },
  TelescopePreviewBorder = { fg = colors.blue_light },
  TelescopeMatching = { fg = colors.gold, fmt = "bold" },
  TelescopePromptPrefix = { fg = colors.green },
  TelescopeSelection =  { fg = colors.blue, bg = colors.selection },
  TelescopeSelectionCaret = { fg = colors.blue }
}

hl.plugins.blankline = {
  IndentBlanklineChar = { fg = colors.selection, fmt = "nocombine" },
  IndentBlanklineSpaceChar = { fg = colors.gray, fmt = "nocombine" },
  IndentBlanklineSpaceCharBlankline = { fg = colors.gray, fmt = "nocombine" },
  IndentBlanklineContextChar = { fg = colors.purple, fmt = "nocombine" },
  IndentBlanklineContextStart = { fmt = "underline", sp = colors.purple },
}

local function nvim_highlights(highlights)
  for group_name, group_settings in pairs(highlights) do
    vim.api.nvim_command(string.format("highlight %s guifg=%s guibg=%s guisp=%s gui=%s", group_name,
      group_settings.fg or "none",
      group_settings.bg or "none",
      group_settings.sp or "none",
      group_settings.fmt or "none"))
    -- print(string.format("highlight %s guifg=%s guibg=%s guisp=%s gui=%s", group_name,
    --     group_settings.fg or "none",
    --     group_settings.bg or "none",
    --     group_settings.sp or "none",
    --     group_settings.fmt or "none"))
  end
end

local highlight = {}

function highlight.load()
  -- print('DEBUG: In function load() lua/maya_ko/highlight')

  -- Set the theme environment
  if vim.g.colors_name then
    vim.cmd("hi clear")
  end

  if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
  end

  vim.o.termguicolors = true
  vim.g.colors_name = "maya-ko"

  -- set highlights for defined categories
  nvim_highlights(hl.common)
  nvim_highlights(hl.syntax_clean)
  nvim_highlights(hl.syntax)
  nvim_highlights(hl.treesitter)
  -- for _, group in pairs(hl.langs) do nvim_highlights(group) end
  for _, group in pairs(hl.plugins) do nvim_highlights(group) end
end

return highlight
