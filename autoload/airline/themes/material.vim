let g:airline#themes#material#palette = {}

function! airline#themes#material#refresh()
  let g:airline#themes#material#palette.accents = {
    \ 'red': [g:material_colorscheme_map.red.gui,
      \ g:material_colorscheme_map.bg.gui,
      \ g:material_colorscheme_map.red.cterm,
      \ g:material_theme_style == 'lighter' ?
        \ g:material_colorscheme_map.white.cterm :
        \ g:material_colorscheme_map.black.cterm],
    \ }

  let s:N1 = [g:material_colorscheme_map.line_highlight.gui,
    \ g:material_colorscheme_map.cyan.gui,
    \ g:material_theme_style == 'lighter' ?
        \ g:material_colorscheme_map.white.cterm :
        \ g:material_colorscheme_map.black.cterm,
    \ g:material_colorscheme_map.cyan.cterm, 'bold']
  let s:N2 = [g:material_colorscheme_map.fg.gui,
    \ g:material_colorscheme_map.selection.gui,
    \ g:material_colorscheme_map.fg.cterm,
    \ g:material_colorscheme_map.selection.cterm, '']
  let s:N3 = [g:material_colorscheme_map.fg.gui,
    \ g:material_colorscheme_map.line_numbers.gui,
    \ g:material_colorscheme_map.fg.cterm,
    \ g:material_colorscheme_map.selection.cterm, '']
  let g:airline#themes#material#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

  let group = [g:material_colorscheme_map.yellow.gui,
    \ g:material_colorscheme_map.bg.gui,
    \ g:material_colorscheme_map.yellow.cterm,
    \ g:material_theme_style == 'lighter' ?
        \ g:material_colorscheme_map.white.cterm :
        \ g:material_colorscheme_map.black.cterm, '']
  let g:airline#themes#material#palette.normal_modified = {
    \ 'airline_c': [ group[0], '', group[2], '', '' ]
    \ }

  let s:I1 = [g:material_colorscheme_map.line_highlight.gui,
    \ g:material_colorscheme_map.violet.gui,
    \ g:material_colorscheme_map.line_highlight.cterm,
    \ g:material_colorscheme_map.violet.cterm, '']
  let g:airline#themes#material#palette.insert = airline#themes#generate_color_map(s:I1, s:N2, s:N3)
  let g:airline#themes#material#palette.insert_modified = g:airline#themes#material#palette.normal_modified

  let s:R1 = [g:material_colorscheme_map.line_highlight.gui,
    \ g:material_colorscheme_map.green.gui,
    \ g:material_colorscheme_map.line_highlight.cterm,
    \ g:material_colorscheme_map.green.cterm, 'bold']
  let g:airline#themes#material#palette.replace = airline#themes#generate_color_map(s:R1, s:N2, s:N3)
  let g:airline#themes#material#palette.replace_modified = g:airline#themes#material#palette.normal_modified

  let s:V1 = [g:material_colorscheme_map.line_highlight.gui,
    \ g:material_colorscheme_map.blue.gui,
    \ g:material_colorscheme_map.line_highlight.cterm,
    \ g:material_colorscheme_map.blue.cterm, 'bold']
  let g:airline#themes#material#palette.visual = airline#themes#generate_color_map(s:V1, s:N2, s:N3)
  let g:airline#themes#material#palette.visual_modified = g:airline#themes#material#palette.normal_modified

  let s:IA = [g:material_colorscheme_map.comments.gui,
    \ g:material_colorscheme_map.line_highlight.gui,
    \ g:material_colorscheme_map.comments.cterm,
    \ g:material_colorscheme_map.line_highlight.cterm, 'bold']
  let g:airline#themes#material#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)
  let g:airline#themes#material#palette.inactive_modified = g:airline#themes#material#palette.normal_modified

  if get(g:, 'loaded_ctrlp', 0)
    let g:airline#themes#material#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [g:material_colorscheme_map.fg.gui,
        \ g:material_colorscheme_map.line_highlight.gui,
        \ g:material_colorscheme_map.fg.cterm,
        \ g:material_colorscheme_map.line_highlight.cterm,
        \ ''],
      \ [g:material_colorscheme_map.cyan.gui,
        \ g:material_colorscheme_map.bg.gui,
        \ g:material_colorscheme_map.cyan.cterm,
        \ g:material_theme_style == 'lighter' ?
          \ g:material_colorscheme_map.white.cterm :
          \ g:material_colorscheme_map.black.cterm,
        \ ''],
      \ [g:material_colorscheme_map.bg.gui,
        \ g:material_colorscheme_map.cyan.gui,
        \ g:material_theme_style == 'lighter' ?
          \ g:material_colorscheme_map.white.cterm :
          \ g:material_colorscheme_map.black.cterm,
        \ g:material_colorscheme_map.cyan.cterm, 'bold'])
  endif
endfun

call airline#themes#material#refresh()