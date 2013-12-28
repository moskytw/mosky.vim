Mosky's VIM Configuration
=========================

It has two parts:

1. My own basic VIM configuration
2. A list of VIM plugins I am using (in [Vundle][] format)

Installation
------------

### Install 1. Basic VIM Configuration

You have two ways to install it.

#### With Vundle

Add the following statement in your `.vimrc`:

    Bundle "moskytw/mosky.vim"

Then, use [Vundle][] to install it:

    $ vim
    :BundleInstall

#### With Git

If you are using the [Vundle][] or [pathgen][]:

    $ git clone https://github.com/moskytw/mosky.vim ~/.vim/bundle/mosky.vim

If you don't have any plugin manager, just download it and copy the files under `mosky.vim` to your `~/.vim` folder.

### Install 2. VIM Plugins I Am Using

The list of plugins is placed in `mosky.vim/vimrc`. Here are the steps to install all of the plugins:

    $ cd ~
    $ ln -s .vim/bundle/mosky.vim/vimrc .vimrc
    $ vim
    :BundleInstall

[Vundle]: https://github.com/gmarik/vundle/
[pathgen]: https://github.com/tpope/vim-pathogen
