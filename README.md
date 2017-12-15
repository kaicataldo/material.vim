# material.vim

A dark color scheme for Vim/Neovim based on the [Material][materialLink] color scheme. This is a fork and is built on the fantastic work done in the [palenight.vim][palenightLink] color scheme.

## Installation
Using [vim-plug][vimplug] (modify this to work with your Vim package manager of choice):

```vim
Plug 'kaicataldo/material.vim'
```

## Usage

In your wonderfully organized Vim (`~/.vimrc`) or Neovim (`.config/nvim/init.vim`) configuration, place the following two lines:

```vim
set background=dark
colorscheme material 
```

### True Colors

To provide the best user experience possible, I recommend enabling true colors. To experience the blissfulness of your editor's true colors, place this in your `.vimrc` or `~/.config/nvim/init.vim` file:

```vim
if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if (has("termguicolors"))
  set termguicolors
endif
```

### Themes

There are three theme options - `default`, `palenight`, and `dark` (defaulting to `default`). This can be configured as follows:

```vim
let g:material_theme_style = 'default' | 'palenight' | 'dark'
```

### Italics

To turn on italics, configure as follows:

```vim
let g:material_terminal_italics = 1
```

### iTerm2 Color Scheme

An iTerm2 color scheme is included in this repo. You can find it [here](https://github.com/kaicataldo/material.vim/tree/master/iterm2/material.itermcolors).

[materialLink]: https://github.com/equinusocio/material-theme
[palenightLink]: https://github.com/drewtempelmeyer/palenight.vim
[vimplug]: https://github.com/junegunn/vim-plug
