# vim 配置文件

windows 系统中
在$HOME目录中执行`git clone https://github.com/lihuu/vimfiles.git`
Linux或者Macos在，$目录执行`git clone https://github.com/lihuu/vimfiles.git .vim`

## 基础

### vim 寄存器和剪贴板

    vim 中有多种寄存器，

- 无名寄存器，这个是我们默认的寄存器。例如在当前行执行 `yy` 就会把当前行复制到无名寄存器中。

### 需要额外安装的依赖

##### nodejs

```bash
# Using Ubuntu
curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
sudo apt-get install -y nodejs
```

##### yarn

```bash
npm install -g yarn
```

##### fzf

Linux 使用 git 安装的方式，使用包管理器安装，安装的版本可能比较旧

```bash
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
```

windows 中可以使用[scoop](https://github.com/lukesampson/scoop/wiki/Quick-Start) 工具直接安装，`scoop install fzf`

##### ack

Linux 平台不必多说，windows 平台直接使用 `scoop install ack`

##### python

python 目前不能安装 python3.10 的，会出现版本的问题
安装完成之后如果出现 python 相关错误的，需要单独安装 python-neovim 包，执行
`pip install neovim` 安装即可

##### 字体

有些插件会依赖 powerline 字体 ，需要安装这些字体

[powerline fonts](https://github.com/powerline/fonts)
[nerdfonts](https://github.com/ryanoasis/nerd-fonts)
[nerdfonts cheat-sheet](https://www.nerdfonts.com/cheat-sheet)

### 一些插件的使用说明

#### 关于lazyvim

https://www.lazyvim.org/

#### go 语言

安装 gopls

```bas
go install golang.org/x/tools/gopls@latest
```

#### emmet 插件

emmet 插件使用的是`mattn/emmet-vim`，补全的快捷键修改了为`<c-e>`，触发模式设置为仅编辑模式，在编辑模式下面使用`<c-e>`会补全。

emmet 的语法参考[官方网站](https://emmet.io/)

#### vim-plug

一个轻量级的插件管理器。
一些基本的使用命令：

1. PlugInstall：安装插件
2. PlugUpdate：更新插件
3. PlugClean：清理插件
4. PlugUpgrade：更新 vim-plug 自身
5. PlugStatus：检查插件状态
6. PlugDiff：查看插件等待升级的内容
7. PlugSnapshot：创建回滚到当前插件的脚本

#### packer

一个使用`lua`实现的包管理器
https://github.com/wbthomason/packer.nvim

##### 特性

- 声明式的插件描述
- 支持依赖
- 支持 luarocks 依赖
- 支持懒加载
- 自动编译高效的懒加载代码，提高启动速度
- 使用 lua 配置和编写
- 支持安装 hooks
- 异步安装
- 支持所动 git 版本，分支
- 支持本地的插件

##### 基本使用命令

- PackerCompile
- PackerClean
- PackerInstall
- PackerUpdate
- PackerSync 相当于先执行 `PackerUpdate` 然后执行 `PackerCompile`
- PackerLoad 立即加载 opt 插件

#### coc.nvim

coc.nvim 这个插件对 nodejs 有版本的要求，可能系统默认的版本不能符合要求。

```bash
# Using Ubuntu
curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
sudo apt-get install -y nodejs
```

**coc-lua**插件
这个插件依赖了[lua-lsp](https://github.com/Alloyed/lua-lsp)这个工具。
lua-lsp 可以通过`luarocks`这个包管理器安装，在 Mac 系统中，可能没有`luarocks`这个包管理器。
需要使用`brew install luarocks`先安装 lua 的包管理器。

**coc-yaml**插件
schema 配置
https://www.schemastore.org/json/

### vim 的一些使用技巧

#### 普通模式

##### 基本的命令

vim 的命令的结构，基本符合英文的语法，（动词 + 名词）的结构。

##### 动词

- `d`，删除，英文单词（delete）。
- `c`，修改，英文单词（change）。
- `y`，复制，英文单词（yank），在 vim 中其实就是复制（copy），只不过这里的复制，默认是把内容复制到 vim 的寄存器中，而不是我们的系统的剪切板。

##### 名词

- `w`，单词，英文单词（word）。
- `s`，句子，英文单词（sentence）。
- `p`，段落，英文单词（paragraph）。

#### 文本对象操作 (Text Object)

##### 文本修改

- d 删除
  - `dw` 删除一个单词
  - `dd` 删除一行
  - `D` 相当于 d$ 从当前字符删除到行尾
- c 修改
  - `cc` 修改整行
  - `C` 相当于 c$ 删除到行尾，然后进入插入模式。
- s 相当于 cl ，表示删除一个字符然后进入插入模式，S 相当于 cc 替换整行内容。
- i 在当前字符前面进入插入模式，I 把光标移动到行首非空白字符上，然后进入插入模式。
- a 在当前字符之后进入插入模式，A 在行尾进入插入模式。
- o 当前行之下插入新行，O 当前之上插入新行。
- r 替换光标下的字符，R 进入插入模式，Esc 退出插入模式。
- u 撤销最近的一个修改动作，U 撤销当前行上的所有操作。

#### vim-surround 插件使用

```javascript
const message = "";
if ((message = "Hello world")) {
  if (true) {
    console.log(message);
  }
}
```

[官方地址](https://github.com/tpope/vim-surround)

#### vim-startify 插件使用

##### 简单的 Session 处理

```vim
:SLoad 加载一个Session
:SSave 保存一个Session
:SDelete 删除一个Session
:SClose 关闭当前的Session
```

#### nvim(>0.5) 使用 lua 配置

##### 安装 luaformatter 格式化 lua 代码

这里通过 luarocks 安装，注意 luarocks 的版本必须是 3.0 以上的

1. 安装 luarocks `brew install luarocks`
2. 安装 luaformatter `luarocks install --server=https://luarocks.org/dev luaformatter`

##### 配置文件说明

> 注意：如果目录中既存在`init.vim`又存在`init.lua`，neovim 会优先使用 `init.lua`作为配置文件

参考项目

https://github.com/LunarVim/LunarVim

https://github.com/glepnir/nvim.git

https://github.com/ayamir/nvimdots

##### nvim-tree 插件

##### 快捷键

- <CR> 编辑
- <C-v> 左右分屏打开
- <C-x> 上下分屏打开
- <C-t> 新的标签页中打开
- a 创建文件
- d 删除文件
- r 重命名文件

##### vim tips

https://vim.fandom.com/wiki/Best_Vim_Tips#Really_useful

##### 启动的时候打印详细的日志

```bash
# 9 表示日志的级别
vim -V9myVim1.log

```

#### vim学习资料

https://lazyvim-ambitious-devs.phillips.codes/

[vim9 script中文手册](https://yianwillis.github.io/vimcdoc/doc/vim9.html)

#### 脚本调试

在 Vim 中查看脚本的加载情况可以使用 :scriptnames 命令。这个命令会列出 Vim 在当前会话中加载的所有脚本文件，包括插件、配置文件、颜色方案等。每个脚本都有一个编号和路径，方便查看具体加载的文件。

```
:scriptnames
```

可以使用以下方法将输出内容捕获到一个新的 buffer 中进行查看：

##### 方法一：使用 `redir` 命令

1. **打开 Vim** 并执行以下命令来将 `:scriptnames` 的输出重定向到一个寄存器，然后将其写入当前 buffer：

   ```vim
   :redir @a
   :silent scriptnames
   :redir END
   :new
   :put a
   ```

   解释：

   - `:redir @a`：将输出重定向到寄存器 `a`。
   - `:silent scriptnames`：执行 `:scriptnames` 命令，但不在命令行中显示输出。
   - `:redir END`：结束重定向。
   - `:new`：打开一个新的 buffer。
   - `:put a`：将寄存器 `a` 的内容插入到新 buffer 中。

##### 方法二：使用 `:execute` 命令（Vim 8+）

如果你使用的是 Vim 8 及以上版本，可以通过 `execute` 结合 `setline()` 命令直接将输出放入 buffer 中：

```vim
:new
:call setline(1, execute('scriptnames'))
```

这个命令直接创建一个新 buffer，并将 `:scriptnames` 的输出插入到这个 buffer 的第一行开始。

## 其他

排查vim启动时间，启动的时候加上 --startuptime 参数，例如：

```bash
vim --startuptime startuptime.log
```

启动的时候会生成一个日志文件，可以查看vim启动的时间

```



```
