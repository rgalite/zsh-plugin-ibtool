zsh-plugin-ibtool
=================

ibtool shortcuts to generate localized XIB files

Features
-------------------------
Make sure your XIB files are localized using Interface Builder:
http://blog.federicomestrone.com/2012/06/06/xib-file-internationalization/


Generate strings file for your base language:

    $ ibtool-generate base-language class-name

is a shortcut for:
    
    $ ibtool --generate-strings-file $base-language.lproj/$class-name.strings $base-language.lproj/$class-name.xib

Integrate your translated strings file in your translated XIB file

    $ ibtool-write base-language target-language class-name

is a shortcut for:
    
    $ ibtool --strings-file $target-language.lproj/$class-name.strings --write $target-language.lproj/$class-name.xib $base-language.lproj/$class-name.xib


Installation
-------------------------
Type these commands in your terminal:

    $ git clone git@github.com:RudthMael/zsh-plugin-ibtool.git
    $ mkdir -p ~/.oh-my-zsh/custom/plugins
    $ ln -s zsh-plugin-ibtool/ibtool ~/.oh-my-zsh/custom/plugins/ibtool
    
And edit your .zshrc file:

    # Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/p$
    # Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
    # Example format: plugins=(rails git textmate ruby lighthouse)
    plugins=(ibtool)
    
Reload your ZSH configuration:

    $ source ~/.zshrc
    
And there you go.
