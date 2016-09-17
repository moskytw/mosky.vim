# Mosky's Vim

It contains Mosky's Vim configuration and plugin list (in
[vim-plug](https://github.com/junegunn/vim-plug) form).


## Keystrokes

Read the
[mosky.vim](https://github.com/moskytw/mosky.vim/blob/nvim/plugin/mosky.vim) and
[init.vim](https://github.com/moskytw/mosky.vim/blob/nvim/init.vim) for the
keystrokes.


## Install Both

Install [vim-plug](https://github.com/junegunn/vim-plug), and

### Vim

```bash
cp -i mosky.vim/init.vim ~/.vimrc
```

### Neovim

```bash
cp -i mosky.vim/init.vim ~/.config/nvim/init.vim
```

Finally,

```bash
vim +:PlugInstall
```


## Install the Config Only

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


## Mosky's Vim Plugins and Projects

1. [luthadel.vim](https://github.com/moskytw/luthadel.vim) – A simple but ardent
   Vim color scheme
2. [nginx-contrib-vim](https://github.com/moskytw/nginx-contrib-vim) – Make Vim
   have better nginx.conf support.
3. [vim-color-scheme-template-generator](https://github.com/moskytw/vim-color-scheme-template-generator) – Generate Vim's color scheme template precisely.


## Report Issue

It meets the unadorned requirements of Python development, but any feature
request or bug report is welcome. Send mail to Mosky mosky.tw@gmail.com.
