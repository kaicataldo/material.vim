if (exists('g:lightline'))
  let s:lighter_middle_fg = g:material_theme_style == 'lighter' ?
    \ g:material_colorscheme_map.fg :
    \ g:material_colorscheme_map.invisibles

  let s:palette = { 'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {} }

  let s:palette.normal.left = [ [
      \ g:material_colorscheme_map.bg.gui,
      \ g:material_colorscheme_map.cyan.gui,
      \ g:material_theme_style == 'lighter' ?
        \ g:material_colorscheme_map.white.cterm :
        \ g:material_colorscheme_map.black.cterm,
      \ g:material_colorscheme_map.cyan.cterm
    \ ], [
      \ g:material_colorscheme_map.fg.gui,
      \ g:material_colorscheme_map.line_numbers.gui,
      \ g:material_colorscheme_map.fg.cterm,
      \ g:material_colorscheme_map.selection.cterm
    \ ] ]

  let s:palette.normal.right = [ [
      \ g:material_colorscheme_map.bg.gui,
      \ g:material_colorscheme_map.cyan.gui,
      \ g:material_theme_style == 'lighter' ?
        \ g:material_colorscheme_map.white.cterm :
        \ g:material_colorscheme_map.black.cterm,
      \ g:material_colorscheme_map.cyan.cterm
    \ ], [
      \ g:material_colorscheme_map.fg.gui,
      \ g:material_colorscheme_map.line_numbers.gui,
      \ g:material_colorscheme_map.fg.cterm,
      \ g:material_colorscheme_map.selection.cterm
    \ ] ]

  let s:palette.normal.middle = [ [
      \ s:lighter_middle_fg.gui,
      \ g:material_colorscheme_map.selection.gui,
      \ s:lighter_middle_fg.cterm,
      \ g:material_colorscheme_map.selection.cterm
    \ ] ]

  let s:palette.normal.error = [ [
      \ g:material_colorscheme_map.bg.gui,
      \ g:material_colorscheme_map.red.gui,
      \ g:material_theme_style == 'lighter' ?
        \ g:material_colorscheme_map.white.cterm :
        \ g:material_colorscheme_map.black.cterm,
      \ g:material_colorscheme_map.red.cterm
    \ ] ]

  let s:palette.normal.warning = [ [
      \ g:material_colorscheme_map.bg.gui,
      \ g:material_colorscheme_map.yellow.gui,
      \ g:material_theme_style == 'lighter' ?
        \ g:material_colorscheme_map.white.cterm :
        \ g:material_colorscheme_map.black.cterm,
      \ g:material_colorscheme_map.yellow.cterm,
    \ ] ]

  let s:palette.insert.left = [ [
      \ g:material_colorscheme_map.bg.gui,
      \ g:material_colorscheme_map.purple.gui,
      \ g:material_theme_style == 'lighter' ?
        \ g:material_colorscheme_map.white.cterm :
        \ g:material_colorscheme_map.black.cterm,
      \ g:material_colorscheme_map.purple.cterm
    \ ], [
      \ g:material_colorscheme_map.fg.gui,
      \ g:material_colorscheme_map.line_numbers.gui,
      \ g:material_colorscheme_map.fg.cterm,
      \ g:material_colorscheme_map.selection.cterm
    \ ] ]

  let s:palette.insert.right = [ [
      \ g:material_colorscheme_map.bg.gui,
      \ g:material_colorscheme_map.purple.gui,
      \ g:material_theme_style == 'lighter' ?
        \ g:material_colorscheme_map.white.cterm :
        \ g:material_colorscheme_map.black.cterm,
      \ g:material_colorscheme_map.purple.cterm
    \ ], [
      \ g:material_colorscheme_map.fg.gui,
      \ g:material_colorscheme_map.line_numbers.gui,
      \ g:material_colorscheme_map.fg.cterm,
      \ g:material_colorscheme_map.selection.cterm
    \ ] ]

  let s:palette.replace.left = [ [
      \ g:material_colorscheme_map.bg.gui,
      \ g:material_colorscheme_map.green.gui,
      \ g:material_theme_style == 'lighter' ?
        \ g:material_colorscheme_map.white.cterm :
        \ g:material_colorscheme_map.black.cterm,
      \ g:material_colorscheme_map.green.cterm
    \ ], [
      \ g:material_colorscheme_map.fg.gui,
      \ g:material_colorscheme_map.line_numbers.gui,
      \ g:material_colorscheme_map.fg.cterm,
      \ g:material_colorscheme_map.selection.cterm
    \ ] ]

  let s:palette.replace.right = [ [
      \ g:material_colorscheme_map.bg.gui,
      \ g:material_colorscheme_map.green.gui,
      \ g:material_theme_style == 'lighter' ?
        \ g:material_colorscheme_map.white.cterm :
        \ g:material_colorscheme_map.black.cterm,
      \ g:material_colorscheme_map.green.cterm
    \ ], [
      \ g:material_colorscheme_map.fg.gui,
      \ g:material_colorscheme_map.line_numbers.gui,
      \ g:material_colorscheme_map.fg.cterm,
      \ g:material_colorscheme_map.selection.cterm
    \ ] ]

  let s:palette.visual.left = [ [
      \ g:material_colorscheme_map.bg.gui,
      \ g:material_colorscheme_map.blue.gui,
      \ g:material_theme_style == 'lighter' ?
        \ g:material_colorscheme_map.white.cterm :
        \ g:material_colorscheme_map.black.cterm,
      \ g:material_colorscheme_map.blue.cterm
    \ ], [
      \ g:material_colorscheme_map.fg.gui,
      \ g:material_colorscheme_map.line_numbers.gui,
      \ g:material_colorscheme_map.fg.cterm,
      \ g:material_colorscheme_map.selection.cterm
    \ ] ]

  let s:palette.visual.right = [ [
      \ g:material_colorscheme_map.bg.gui,
      \ g:material_colorscheme_map.blue.gui,
      \ g:material_theme_style == 'lighter' ?
        \ g:material_colorscheme_map.white.cterm :
        \ g:material_colorscheme_map.black.cterm,
      \ g:material_colorscheme_map.blue.cterm
    \ ], [
      \ g:material_colorscheme_map.fg.gui,
      \ g:material_colorscheme_map.line_numbers.gui,
      \ g:material_colorscheme_map.fg.cterm,
      \ g:material_colorscheme_map.selection.cterm
    \ ] ]

  let s:palette.inactive.left =  [ [
      \ s:lighter_middle_fg.gui,
      \ g:material_colorscheme_map.selection.gui
    \ ], [
      \ s:lighter_middle_fg.gui,
      \ g:material_colorscheme_map.selection.gui
    \ ] ]

  let s:palette.inactive.right = [ [
      \ s:lighter_middle_fg.gui,
      \ g:material_colorscheme_map.selection.gui
    \ ], [
      \ s:lighter_middle_fg.gui,
      \ g:material_colorscheme_map.selection.gui
    \ ] ]

  let s:palette.inactive.middle = [ [
      \ s:lighter_middle_fg.gui,
      \ g:material_colorscheme_map.selection.gui
    \ ] ]

  let s:palette.tabline.left = [ [
      \ g:material_colorscheme_map.fg.gui,
      \ g:material_colorscheme_map.line_numbers.gui
    \ ] ]

  let s:palette.tabline.middle = [ [
      \ s:lighter_middle_fg.gui,
      \ g:material_colorscheme_map.selection.gui
    \ ] ]

  let s:palette.tabline.right = [ [
      \ g:material_colorscheme_map.bg.gui,
      \ g:material_colorscheme_map.cyan.gui
    \ ] ]

  let s:palette.tabline.tabsel = [ [
      \ g:material_colorscheme_map.bg.gui,
      \ g:material_colorscheme_map.cyan.gui
    \ ] ]

  let g:lightline#colorscheme#material_vim#palette = lightline#colorscheme#fill(s:palette)
endif
