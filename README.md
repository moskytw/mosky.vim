Mosky's VIM Settings
====================

It includes my settings and [Vundle][] plugins list.

It is designed as an independent vim plugin. You can install it without any other plugins.

Usage
-----

### Install as An Independent Plugin

You have two ways to install it.

#### With Vundle

Add the command in your `.vimrc`:

    Bundle "moskied/moskysvim"

Then, use [Vundle][] to install.

    $ vim
    :BundleInstall

#### With Git

If you are using the [Vundle][] or [pathgen][]:

    $ git clone https://github.com/moskied/moskysvim ~/.vim/bundle/moskysvim

If you don't have any plugin manager, just download it and copy files under `moskysvim` to your `~/.vim` folder.

### Install All of Things

The [Vundle][] plugins list is recoded on `moskysvim/vimrc`. Copy the plugins you wants and use [Vundle][] to install them.

The following steps install all of the plugins:

    $ cd ~/.vim
    $ ln -s bundle/moskysvim/vimrc .vimrc
    $ vim
    :BundleInstall

[Vundle]: https://github.com/gmarik/vundle/
[pathgen]: https://github.com/tpope/vim-pathogen
