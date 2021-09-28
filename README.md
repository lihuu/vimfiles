

## vim 配置文件

windows系统中
在$HOME目录中执行`git clone https://github.com/lihuu/vimfiles.git`
Linux或者Macos在，$目录执行`git clone https://github.com/lihuu/vimfiles.git .vim`
####  需要额外安装的依赖
#####  nodejs

```bash
# Using Ubuntu
curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
sudo apt-get install -y nodejs
```

#####  yarn

```bash
npm install -g yarn
```

#####  fzf 
Linux 使用git安装的方式，使用包管理器安装，安装的版本可能比较旧
```bash
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install 
```
   windows 中可以使用[scoop](https://github.com/lukesampson/scoop/wiki/Quick-Start)    工具直接安装，`scoop install fzf`

##### ack

Linux平台不必多说，windows 平台直接使用 `scoop install ack`

###  一些插件的使用说明
#### emmet 插件
emmet插件使用的是`mattn/emmet-vim`，补全的快捷键修改了为`<c-e>`，触发模式设置为仅编辑模式，在编辑模式下面使用`<c-e>`会补全。

emmet的语法参考[官方网站](https://emmet.io/)

#### vim-plug
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
coc.nvim 这个插件对nodejs有版本的要求，可能系统默认的版本不能符合要求。
```bash
# Using Ubuntu
curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
sudo apt-get install -y nodejs
```

**coc-lua**插件
这个插件依赖了[lua-lsp](https://github.com/Alloyed/lua-lsp)这个工具。
lua-lsp可以通过`luarocks`这个包管理器安装，在Mac系统中，可能没有`luarocks`这个包管理器。
需要使用`brew install luarocks`先安装lua的包管理器。

### vim 的一些使用技巧

#### 普通模式

##### 基本的命令
vim 的命令的结构，基本符合英文的语法，（动词 + 名词）的结构。

##### 动词

* `d`，删除，英文单词（delete）。
* `c`，修改，英文单词（change）。
* `y`，复制，英文单词（yank），在vim中其实就是复制（copy），只不过这里的复制，默认是把内容复制到vim的寄存器中，而不是我们的系统的剪切板。

##### 名词
* `w`，单词，英文单词（word）。
* `s`，句子，英文单词（sentence）。
* `p`，段落，英文单词（paragraph）。

#### 文本对象操作 (Text Object)

#### vim-surround插件使用
[官方地址](https://github.com/tpope/vim-surround)











