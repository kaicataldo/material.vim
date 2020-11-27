# material.vim

A port of the [Material](https://material-theme.site) color scheme for Vim/Neovim.

![](https://raw.githubusercontent.com/kaicataldo/material.vim/main/screenshots/material-all-variants.png)

## Installation

Using [vim-plug](https://github.com/junegunn/vim-plug) (modify this to work with your Vim package manager of choice):

```vim
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
```

## Usage

To enable this color scheme, add the following to your Vim (`~/.vimrc`) or Neovim (`~/.config/nvim/init.vim`) configuration:

```vim
colorscheme material
```

### True Colors

True colors are a requirement for this color scheme to work properly. To enable this, place the following in your `~/.vimrc` or `~/.config/nvim/init.vim` file:

```vim
" For Neovim 0.1.3 and 0.1.4 - https://github.com/neovim/neovim/pull/2198
if (has('nvim'))
  let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
endif

" For Neovim > 0.1.5 and Vim > patch 7.4.1799 - https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162
" Based on Vim patch 7.4.1770 (`guicolors` option) - https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd
" https://github.com/neovim/neovim/wiki/Following-HEAD#20160511
if (has('termguicolors'))
  set termguicolors
endif
```

### Theme

There are five color schemes - `default`, `palenight`, `ocean`, `lighter`, and `darker`.

Aditionally, Material's legacy edition ([Community Material](https://github.com/material-theme/vsc-community-material-theme)), is supported for each color scheme - `default-community`, `palenight-community`, `ocean-community`, `lighter-community`, and `darker-community`.

This amounts to a total of ten theme options (defaulting to `default`), that can be configured as follows:

```vim
let g:material_theme_style = 'default' | 'palenight' | 'ocean' | 'lighter' | 'darker' | 'default-community' | 'palenight-community' | 'ocean-community' | 'lighter-community' | 'darker-community'
```

### Italics

To enable italics (`0` or off by default), please add the following to your configuration file:

```vim
let g:material_terminal_italics = 1
```

### Full configuration example

```vim
let g:material_terminal_italics = 1
let g:material_theme_style = 'lighter'
colorscheme material
```

### JavaScript
The [vim-javascript](https://github.com/pangloss/vim-javascript) plugin, which provides fine-grained JS syntax highlighting features, is highly recommended for proper JavaScript highlighting. The theme will still work without the plugin, however JS highlighting will be minimal.

### lightline.vim

To use the theme, install [lightline.vim](https://github.com/itchyny/lightline.vim) with your Vim package manager of choice and then add the following to your configuration file:

```vim
let g:lightline = { 'colorscheme': 'material_vim' }
```

The theme will change to match the theme option specified.

Note: The included theme is called `material_vim` because lightline.vim comes with its own version of a material theme (which does not change based on the theme version selected).

### airline.vim

To use the included [vim-airline](https://github.com/vim-airline/vim-airline) theme:

```vim
let g:airline_theme = 'material'
```

### Terminal Color Scheme

Corresponding terminal color schemes are included in this repo. You can find them [here](https://github.com/kaicataldo/material.vim/tree/master/terminal-colors/).

#### Vim in macOS

The default version of `vim` on `macOS` doesn't support `termguicolors`. In order for the colorscheme to work properly you need to apply the terminal colors from above. Or you can install the latest version from `brew`.

## Troubleshooting

### Italics not rendering correctly

Italicized text [sometimes does not rendering correctly in iTerm2](https://github.com/kaicataldo/material.vim/issues/56). Before making an issue, if you use iTerm2, please see if this addition to your .vimrc fixes the issue for you:

```vim
" Fix italics in Vim
if !has('nvim')
  let &t_ZH="\e[3m"
  let &t_ZR="\e[23m"
endif
```

## Thanks

Thanks to [@equinusocio](https://github.com/equinusocio) for the original Material theme as well as [palenight.vim](https://github.com/drewtempelmeyer/palenight.vim) and [quantum](https://github.com/tyrannicaltoucan/vim-quantum), both of which were of great help when I first started this project.
