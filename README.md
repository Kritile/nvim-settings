## Installation Neovim

Requires NodeJs >= 12.12

### Windows 

Neovim is available as a [Chocolatey Package](https://chocolatey.org/packages/neovim/).
Stable Neovim:
```
> choco install neovim
```

Pre-Release Neovim:
```
> choco install neovim --pre
```

### MacOS

#### Homebrew

Neovim Qt is available in the [Homebrew](https://brew.sh/) core package repository.
To install the latest release:
```
$ brew install neovim-qt
```

To install the latest development version:
```
$ brew install --HEAD neovim-qt
```

### Linux

Neovim Qt is packaged for many distributions, use your favorite package manager.

## Plugin installation
* Install [packer.nvim](https://github.com/wbthomason/packer.nvim)
* Copy repository to nvim config folder
```
The default locations are:

 - Windows: %LOCALAPPDATA%\nvim\

 - MacOS: ~/.config/nvim/

 - Linux: ~/.config/nvim/
```
* Run neovim and type command `:PackerInstall`
* For start using lsp server type `:CocInstall <coc-plugin-name>`
For Example:
```
:CocInstall coc-json coc-tsserver
```
