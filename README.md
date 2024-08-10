# 🧛🏻‍♂️ Gardenal

<img src="./img/gif.gif">

Gardenal is a plugin for Vim that allows you to create keyboard shortcuts to change themes, easy to install and simple to configure.

## How install? 

To install we have several ways, we can install manually or through package managers such as Vim-Plug, Vundle, Pathogen... Let's start by seeing how to install it manually:

first you run the installer

``` shell
bash install.sh
```

then you configure it in your configuration file, like in this example:

``` vimscript
source ~/.vim/plugins/gardenal.vim

let themes = ['desert', 'gruvbox', 'monokai']
call MapThemeSwitcherKeys(themes)
nnoremap <silent> 1 :call ThemeSwitcher(themes, 1)<CR>
nnoremap <silent> 2 :call ThemeSwitcher(themes, 2)<CR>
nnoremap <silent> 3 :call ThemeSwitcher(themes, 3)<CR>
```

To install via vim-plug, we can do it this way, add the following statement to your configuration file:

``` Shell
Plug 'BrunoCiccarino/gardenal'
```

Then press esc to exit insertion mode and run ```:PlugInstall```

To install via vundle it's very similar, you just need to add the following instructions to your configuration file:

``` Shell
Plugin 'BrunoCiccarino/gardenal'
```

Then you repeat the process by pressing esc and typing ```:PluginInstall```

In Pathogen it requires you to clone my repository to a specific directory, for vim you clone to the ```~/.vim/bundle``` directory in neovim you clone to the ```~/.config/nvim/bundle directory ```. As in this example:

``` Shell
git clone https://github.com/BrunoCiccarino/gardenal  ~/.vim/bundle/gardenal
```

## Contribute

If you want to contribute to the project, just send a pull request and I will review the code and accept it. Please also send a detailed description of your changes or additions to the code.

## Contributors

This project exists thanks to all the people who contribute. 

<a href="https://github.com/BrunoCiccarino/gardenal/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=BrunoCiccarino/gardenal&max=24" />
</a>