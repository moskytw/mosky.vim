Mosky's VIM Settings
====================

It is my settings for vim. But it is not just another .vimrc, it is desgined as an independent plugin for vim.

It also depents on other plugins, but it is up to you to install or not to install other plugins.

See the `moskysvim/vimrc` to get the full list of plugins.

Usage
-----

It use [Vundle][] to manage plugins. Recommend to prepare [Vundle][] first.

### Install as A Independent Plugin

#### With Vundle

Add the command in your `.vimrc`:

    Bundle "moskied/moskysvim"

And use [Vundle][] to install.

    $ vim
    :BundleInstall

#### With Git

    $ git clone https://github.com/moskied/moskysvim ~/.vim/bundle/moskysvim

### Install All of Things

It contains a .vimrc that records the other plugins it depends on. Copy it and use [Vundle][] to install them.

    $ cd ~/.vim
    $ ln -s bundle/moskysvim/vimrc .vimrc
    $ vim
    :BundleInstall

[Vindle]: https://github.com/gmarik/vundle/
