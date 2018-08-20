# Mosky's Vim Config and Plugins

It's Mosky's Vim configuration and plugin list (in
[vim-plug](https://github.com/junegunn/vim-plug) form).


## Keystrokes

Read the
[mosky.vim](https://github.com/moskytw/mosky.vim/blob/master/plugin/mosky.vim)
and [init.vim](https://github.com/moskytw/mosky.vim/blob/master/init.vim) files
for the useful built-in, Mosky's, and plugins' keystrokes.


## Install Config and Plugins

Install [vim-plug](https://github.com/junegunn/vim-plug), and

### Vim

```bash
$ cp -i mosky.vim/init.vim ~/.vimrc
$ sed -i s^~/.config/nvim/plugged/^~/.vim/plugged/^ ~/.vimrc
```

### Neovim

```bash
$ cp -i mosky.vim/init.vim ~/.config/nvim/init.vim
```

Finally,

```bash
$ vim +:PlugInstall
```


## Install Config Only

Put the line into your `.vimrc` or `init.vim`:

### vim-plug

```vim
Plug 'moskytw/mosky.vim'
```

### Vundle

```vim
Plugin 'moskytw/mosky.vim'
```

and trigger the install command in Vim.


## See Also

1. [luthadel.vim](https://github.com/moskytw/luthadel.vim) – A simple but
   ardent Vim color scheme
2. [nginx-contrib-vim](https://github.com/moskytw/nginx-contrib-vim) – Make Vim
   have better nginx.conf support
3. [vim-color-scheme-template-generator](https://github.com/moskytw/vim-color-scheme-template-generator)
   – Generate Vim's color scheme template precisely

The plugin list includes the 1 and 2.


## Report Issue

It meets the unadorned requirements of Python development, but any feature
request or bug report is welcome. Just file an issue on GitHub.
