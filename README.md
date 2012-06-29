Mosky's VIM Settings
====================

It includes my settings and [Vundle][] plugins list (see `mosky.vim/vimrc` for details).

It is designed as an independent vim plugin. You can install it without any other plugins.

Installation
------------

### Install as An Independent Plugin

You have two ways to install it.

#### With Vundle

Add the command in your `.vimrc`:

    Bundle "moskied/mosky.vim"

Then, use [Vundle][] to install it:

    $ vim
    :BundleInstall

#### With Git

If you are using the [Vundle][] or [pathgen][]:

    $ git clone https://github.com/moskied/mosky.vim ~/.vim/bundle/mosky.vim

If you don't have any plugin manager, just download it and copy the files under `mosky.vim` to your `~/.vim` folder.

### Install All of Things

The [Vundle][] plugins list is recoded on `mosky.vim/vimrc`. Copy the plugins you want and use [Vundle][] to install them.

Here are the steps to install all of the plugins:

    $ cd ~/.vim
    $ ln -s bundle/mosky.vim/vimrc .vimrc
    $ vim
    :BundleInstall

[Vundle]: https://github.com/gmarik/vundle/
[pathgen]: https://github.com/tpope/vim-pathogen
