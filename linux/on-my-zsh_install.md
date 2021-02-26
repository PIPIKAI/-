**一、安装步骤：**

1.安装zsh

```
yum install zsh
```

2.安装git

```
yum install git
```

 

3.下载`oh-my-zsh`的安装脚本

- 安装wget(centos7默认是没有的)

```
yum install wget
```

4.下载 zsh 安装脚本

- 我这里因为用 github 源无法下载，一直卡在 clone into "xxx"，所以改换了国内的镜像源

```
# gitee 源
wget https://gitee.com/mirrors/oh-my-zsh/raw/master/tools/install.sh


# 普通源
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

5.编辑 install.sh

找到以下部分

```
# Default settings
ZSH=${ZSH:-~/.oh-my-zsh}
REPO=${REPO:-ohmyzsh/ohmyzsh}
REMOTE=${REMOTE:-https://github.com/${REPO}.git}
BRANCH=${BRANCH:-master}
```

把

```
REPO=${REPO:-ohmyzsh/ohmyzsh}
REMOTE=${REMOTE:-https://github.com/${REPO}.git}
```

替换为

```
REPO=${REPO:-mirrors/oh-my-zsh}
REMOTE=${REMOTE:-https://gitee.com/${REPO}.git}
```

\6. 编辑后保存, 运行安装即可. (运行前先给install.sh权限)

```
# 赋予可执行权限
chomd +x install.sh
# 运行
sh install.sh
```

\7. 修改仓库地址

```
cd ~/.oh-my-zsh
git remote set-url origin https://gitee.com/mirrors/oh-my-zsh.git
git pull
```

 

**二、切换为 zsh**

\1. 输入`cat /etc/shells`命令来查看本地安装的shell

[![复制代码](https://common.cnblogs.com/images/copycode.gif)](javascript:void(0);)

```
/bin/sh
/bin/bash
/usr/bin/sh
/usr/bin/bash
/bin/tcsh
/bin/csh
/bin/zsh
```

[![复制代码](https://common.cnblogs.com/images/copycode.gif)](javascript:void(0);)

\2. 切换sehll至zsh

```
chsh -s /bin/zsh
```

\3. 查看当前使用的shell

```
echo $SHELL
```

 

**三、oh-my-zsh插件设置**

\1. 编辑主题和插件

```
vim ~/.zshrc
```

- 修改主题：找到下面设置主题的部分，修改引号中的名称即可（比如我这里用的 ys 主题）

```
ZSH_THEME="jonathan"
```

- 修改插件：找到插件的部分，直接修改，常用的插件可以自行参考网上其他文章

[![复制代码](https://common.cnblogs.com/images/copycode.gif)](javascript:void(0);)

```
plugins=(git
sublime
z
web-search
wd
zsh-autosuggestions
extract
zsh-syntax-highlighting)
```

[![复制代码](https://common.cnblogs.com/images/copycode.gif)](javascript:void(0);)

\2. 刷新配置文件

```
source ~/.zshrc
```

-   在刷新配置的过程中，提示zsh-autosuggestions、zsh-syntax-highlighting 插件 not found，可通过单独下载解决（下载后再次刷新配置文件）：

```
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
```





```
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/root/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="jonathan"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git
sublime
web-search
wd
zsh-autosuggestions
extract
zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
```

