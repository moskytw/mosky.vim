Mosky's VIM Settings
====================

It is my settings for vim. Use [Vundle][] to manage.

Usage
-----

Recommend to prepare [Vundle][] first.

### Install as A Independent Plugin

Add the command in your `.vimrc`:

    Bundle "moskied/moskysvim"

### Install All of Things

Install it includes all of other plugins.

    $ git clone https://github.com/moskied/moskysvim ~/.vim/bundle/moskysvim
    $ cd ~/.vim
    $ ln -s bundle/moskysvim/vimrc .vimrc
    $ vim
    :BundleInstall

See the `moskysvim/vimrc` to get the full list of plugins.

[Vindle]: https://github.com/gmarik/vundle/
