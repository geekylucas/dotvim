README
======

My vim configuration.

```sh
cd $HOME
git clone git@github.com:geekylucas/dotvim.git .vim 
ln -s .vim/.vimrc .vimrc
cd .vim && git submodule update --init --recursive
```

iTerm2
------

For OS X terminal hotness, install iTerm2 and configure like this:

1. Preferences -> Profiles -> Terminal -> Report Terminal Type: xterm-256color
2. Preferences -> Profiles -> Text -> Fonts: 12pt DejaVu Sans Mono for Powerline  
Do this for both "Regular Font" and "Non-ASCII Font". Fonts are downloaded to ```~/.vim/powerline-fonts```
