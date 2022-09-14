local colors = vim.g.material_colorscheme_map
local style = vim.g.material_theme_style
local notify = vim.notify

-- If material colors are not found, defaults to lualine material theme
if not colors then
  local msg = 'material colors not loaded. Defaults to lualine material theme'
  notify(msg, 'warn', { title = 'material.vim' })
  return require('lualine.themes.material')
end

local middle = style == 'lighter' and colors.fg or colors.selection
local b_bg = colors.line_numbers

return {
  normal = {
    a = { fg = colors.bg.gui, bg = colors.cyan.gui, gui = 'bold' },
    b = { fg = colors.fg.gui, bg = b_bg.gui },
    c = { fg = colors.fg.gui, bg = middle.gui },
  },
  insert = {
    a = { fg = colors.bg.gui, bg = colors.purple.gui, gui = 'bold' },
    b = { fg = colors.fg.gui, bg = b_bg.gui },
  },
  visual = {
    a = { fg = colors.bg.gui, bg = colors.blue.gui, gui = 'bold' },
    b = { fg = colors.fg.gui, bg = b_bg.gui },
  },
  replace = {
    a = { fg = colors.bg.gui, bg = colors.green.gui, gui = 'bold' },
    b = { fg = colors.fg.gui, bg = b_bg.gui },
  },
  inactive = {
    a = { fg = colors.fg.gui, bg = colors.bg.gui, gui = 'bold' },
    b = { fg = colors.fg.gui, bg = b_bg.gui },
    c = { fg = colors.fg.gui, bg = middle.gui },
  },
}
