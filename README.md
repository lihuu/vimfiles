## vimfiles
windows系统中
在$HOME目录中执行`git clone https://github.com/lihuu/vimfiles.git`
Linux或者Macos在，$目录执行`git clone https://github.com/lihuu/vimfiles.git .vim`
### 需要额外安装的依赖
1. nodejs
2. yarn
3. fzf
4. git
    windows 中可以使用[scoop](https://github.com/lukesampson/scoop/wiki/Quick-Start)工具直接安装，`scoop install fzf`
## 一些插件的使用说明
### vim-plug
一个轻量级的插件管理器。
一些基本的使用命令：
1. PlugInstall：安装插件
2. PlugUpdate：更新插件
3. PlugClean：清理插件
4. PlugUpgrade：更新vim-plug自身
5. PlugStatus：检查插件状态
6. PlugDiff：查看插件等待升级的内容
7. PlugSnapshot：创建回滚到当前插件的脚本
### 其他
#### coc.nvim
**coc-lua**插件
这个插件依赖了[lua-lsp](https://github.com/Alloyed/lua-lsp)这个工具。
lua-lsp可以通过`luarocks`这个包管理器安装，在Mac系统中，可能没有`luarocks`这个包管理器。
需要使用`brew install luarocks`先安装lua的包管理器。



