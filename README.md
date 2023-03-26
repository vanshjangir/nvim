# **A basic config for neovim**
This is a simple configuraton for neovim in Windows(native not WSL) includes autocompletion for python, syntax highlighting, various key-maps(shortcuts) and a good theme.


## This is what it looks like
![Screenshot](neovim.png)



## Installation

### Requirements
1. Make sure you have python and git installed.

1. Run `winget install Neovim.Neovim` for winget package manager. 
2. Run `choco install neovim` for chocolatey package manager. 
3. Or download it manually. Refer to [this](https://github.com/neovim/neovim/wiki/Installing-Neovim) page for any queries

### Configuraton

Make a folder named nvim in **C:/Users/This Pc/AppData/Local**
Clone this repo by writing `git clone https://github.com/vanshjangir/my-neovim-config` in powershell. Copy the contents of the folder my-neovim-config(which will be created after cloning this repo) in that nvim folder

### Installing plugins
1. Run these two command in your powershell. These are package managers for nvim. 
```
iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
    ni $HOME/AppData/Local/nvim-data/site/autoload/plug.vim -Force
```

```
git clone https://github.com/wbthomason/packer.nvim "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim"

```

2. Open the init.vim file by writing `nvim init.vim` in the nvim folder. Opening it first time might give you some errors, skip them just press ENTER.
3. Press ESC if you are not in normal (press it anyway just to make sure) and then type `:PlugInstall`. It will download somefiles let it happen and exit it by writing `:q` then exit nvim by writing `:wq`

4. Reopen the init.vim file in normal mode write `:PackerSync`. It will install somefiles let it happen then exit the window and you are Good to Go! 


## Troubleshooting
1. There are only one or two ways that anything would go wrong. 
2. Make sure you have python installed.
3. If you are using chocolatey make sure to open powershell with administrator's privileges




