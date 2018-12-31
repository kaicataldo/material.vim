if (exists('g:lightline'))
  let g:material_theme_style = get(g:, 'material_theme_style', 'default')

  " Color palette
  if g:material_theme_style == 'default'
    let s:gray1 = '#263238'
  elseif g:material_theme_style == 'palenight'
    let s:gray1 = '#292D3E'
  elseif g:material_theme_style == 'dark'
    let s:gray1 = '#212121'
  endif

  let s:gray2 = g:material_theme_style == 'dark' ? '#292929' : '#2c3a41'
  let s:gray3 = g:material_theme_style == 'dark' ? '#474646' : '#425762'
  let s:gray4 = g:material_theme_style == 'dark' ? '#6a6c6c' : '#658494'
  let s:gray5 = g:material_theme_style == 'dark' ? '#b7bdc0' : '#aebbc5'
  let s:red = '#ff5370'
  let s:green = '#c3e88d'
  let s:yellow = '#ffcb6b'
  let s:blue = '#82aaff'
  let s:purple = '#c792ea'
  let s:cyan = '#89ddff'
  let s:orange = '#f78c6c'
  let s:indigo = '#BB80B3'

  let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

  let s:p.normal.left = [ [ s:gray2, s:blue ], [ s:gray5, s:gray3 ] ]
  let s:p.normal.right = [ [ s:gray2, s:blue ], [ s:gray5, s:gray3 ] ]
  let s:p.normal.middle = [ [ s:gray4, s:gray2 ] ]
  let s:p.normal.error = [ [ s:gray2, s:red ] ]
  let s:p.normal.warning = [ [ s:gray2, s:yellow ] ]

  let s:p.insert.left = [ [ s:gray2, s:green ], [ s:gray5, s:gray3 ] ]
  let s:p.insert.right = [ [ s:gray2, s:green ], [ s:gray5, s:gray3 ] ]

  let s:p.replace.left = [ [ s:gray2, s:red ], [ s:gray5, s:gray3 ] ]
  let s:p.replace.right = [ [ s:gray2, s:red ], [ s:gray5, s:gray3 ] ]

  let s:p.visual.left = [ [ s:gray2, s:orange ], [ s:gray5, s:gray3 ] ]
  let s:p.visual.right = [ [ s:gray2, s:orange ], [ s:gray5, s:gray3 ] ]

  let s:p.inactive.left =  [ [ s:gray5, s:gray3 ], [ s:gray4, s:gray2 ] ]
  let s:p.inactive.right = [ [ s:gray5, s:gray3 ], [ s:gray4, s:gray2 ] ]
  let s:p.inactive.middle = [ [ s:gray4, s:gray2 ] ]

  let s:p.tabline.left = [ [ s:gray5, s:gray3 ] ]
  let s:p.tabline.middle = [ [ s:gray4, s:gray2 ] ]
  let s:p.tabline.right = [ [ s:gray2, s:blue ] ]
  let s:p.tabline.tabsel = [ [ s:gray2, s:blue ] ]

  let g:lightline#colorscheme#material_vim#palette = lightline#colorscheme#fill(s:p)
endif
