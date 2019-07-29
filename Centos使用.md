
## 目录
- [find命令的使用](#find命令的使用)
    * [查找当前目录及其子目录下的文件](#查找当前目录及其子目录下的文件)
- [配置composer-阿里源](#配置composer-阿里源)
- [laravel](#laravel)
    * [laravel安装](#laravel安装)
    * [laravel环境变量](#laravel环境变量)
- [显示目录结构](#显示目录结构)
    * [安装tree](#安装tree)
- [Node](#node)
    * [安装Node](#安装node)
    * [配置Node环境变量](#配置node环境变量)
    * [安装和使用nrm](#安装和使用nrm)
- [Python](#python)
    * [安装python](#安装python)
    * [更新pip3](#更新pip3)
# find命令的使用

## 查找当前目录及其子目录下的文件
```bash
find . -name "xx"
```

# 配置composer-阿里源
```bash
composer config -g repo.packagist composer https://mirrors.aliyun.com/composer/
```

# laravel
## laravel安装
```bash
composer global require laravel/installer
```
## laravel环境变量
```bash
vi /etc/profile
    export PATH=$PATH:/root/.config/composer/vendor/bin
source /etc/profile
```
##### 出现错误：/root/.config/composer/vendor/bin/laravel:行14: /root/.config/composer/vendor/laravel/installer/laravel: 权限不够
```bash
cd /root/.config/composer/vendor/laravel/installer
chmod a+x laravel
```
# 显示目录结构
## 安装tree

```bash
yum install -y tree 
```

# Node

## 安装Node

```bash
 wget https://nodejs.org/dist/v10.16.0/node-v10.16.0-linux-x64.tar.xz
 tar -xvJf node-v10.16.0-linux-x64.tar.xz
 mv node-v10.16.0-linux-x64 /usr/local/node
 ln -s /usr/local/node/bin/node /usr/bin/node    //Node 软连接
 ln -s /usr/local/node/bin/npm /usr/bin/npm      //npm 软连接
```

## 配置Node环境变量
```bash
vi /etc/profile
    export NODE_HOME=/usr/local/node
    export PATH=$NODE_HOME/bin:$PATH
    export NODE_PATH=$NODE_HOME/node_modules:$PATH
source /etc/profile
```

## 安装和使用nrm
```bash
npm install -g nrm
nrm ls
nrm taobao
```

#安装adb环境
```bash
yum install android-tools
``` 

#Python

##安装python
```bash
wget https://www.python.org/ftp/python/3.7.4/Python-3.7.4.tar.xz          //根据官网对应版本更改为对应的下载链接
tar -xvJf Python-3.7.4.tar.xz                                             //解压
cd Python-3.7.4                                                           //编译源码
./configure --prefix=/usr/local/bin/python3
make&&make install
ln -s /usr/local/bin/python3/bin/python3 /usr/bin/python3                 //建立python3软连接
ln -s /usr/local/bin/python3/bin/pip3 /usr/bin/pip3                       //建立pip3软连接
```
#### make错误ModuleNotFoundError: No module named '_ctypes'
```bash
 yum install -y libffi-devel                                              //安装libffi-devel后重新编译
 make && make install
```
###更新pip3
```bash
pip3 install --upgrade pip
```