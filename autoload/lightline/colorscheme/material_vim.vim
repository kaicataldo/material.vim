if (exists('g:lightline'))
  let s:lighter_middle_fg = g:material_theme_style == 'lighter' ? g:material_colorscheme_map.fg : g:material_colorscheme_map.invisibles

  let s:palette = { 'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {} }

  let s:palette.normal.left = [ [ g:material_colorscheme_map.bg, g:material_colorscheme_map.cyan ], [ g:material_colorscheme_map.fg, g:material_colorscheme_map.line_numbers ] ]
  let s:palette.normal.right = [ [ g:material_colorscheme_map.bg, g:material_colorscheme_map.cyan ], [ g:material_colorscheme_map.fg, g:material_colorscheme_map.line_numbers ] ]
  let s:palette.normal.middle = [ [ s:lighter_middle_fg, g:material_colorscheme_map.selection ] ]
  let s:palette.normal.error = [ [ g:material_colorscheme_map.bg, g:material_colorscheme_map.red ] ]
  let s:palette.normal.warning = [ [ g:material_colorscheme_map.bg, g:material_colorscheme_map.yellow ] ]

  let s:palette.insert.left = [ [ g:material_colorscheme_map.bg, g:material_colorscheme_map.purple ], [ g:material_colorscheme_map.fg, g:material_colorscheme_map.line_numbers ] ]
  let s:palette.insert.right = [ [ g:material_colorscheme_map.bg, g:material_colorscheme_map.purple ], [ g:material_colorscheme_map.fg, g:material_colorscheme_map.line_numbers ] ]

  let s:palette.replace.left = [ [ g:material_colorscheme_map.bg, g:material_colorscheme_map.green ], [ g:material_colorscheme_map.fg, g:material_colorscheme_map.line_numbers ] ]
  let s:palette.replace.right = [ [ g:material_colorscheme_map.bg, g:material_colorscheme_map.green ], [ g:material_colorscheme_map.fg, g:material_colorscheme_map.line_numbers ] ]

  let s:palette.visual.left = [ [ g:material_colorscheme_map.bg, g:material_colorscheme_map.blue ], [ g:material_colorscheme_map.fg, g:material_colorscheme_map.line_numbers ] ]
  let s:palette.visual.right = [ [ g:material_colorscheme_map.bg, g:material_colorscheme_map.blue ], [ g:material_colorscheme_map.fg, g:material_colorscheme_map.line_numbers ] ]

  let s:palette.inactive.left =  [ [ s:lighter_middle_fg, g:material_colorscheme_map.selection ], [ s:lighter_middle_fg, g:material_colorscheme_map.selection ] ]
  let s:palette.inactive.right = [ [ s:lighter_middle_fg, g:material_colorscheme_map.selection ], [ s:lighter_middle_fg, g:material_colorscheme_map.selection ] ]
  let s:palette.inactive.middle = [ [ s:lighter_middle_fg, g:material_colorscheme_map.selection ] ]

  let s:palette.tabline.left = [ [ g:material_colorscheme_map.fg, g:material_colorscheme_map.line_numbers ] ]
  let s:palette.tabline.middle = [ [ s:lighter_middle_fg, g:material_colorscheme_map.selection ] ]
  let s:palette.tabline.right = [ [ g:material_colorscheme_map.bg, g:material_colorscheme_map.cyan ] ]
  let s:palette.tabline.tabsel = [ [ g:material_colorscheme_map.bg, g:material_colorscheme_map.cyan ] ]

  let g:lightline#colorscheme#material_vim#palette = lightline#colorscheme#fill(s:palette)
endif
