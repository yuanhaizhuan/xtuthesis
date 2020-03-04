# xtuthesis
LaTeX Thesis Template for Xiangtan University (thuthesis-based development)

此宏包旨在建立一个简单易用的湘潭大学学位论文 LaTeX 模板，该模板基于薛瑞尼教授开发的清华大学学位论文 LaTeX 模板做了一定的修改，在此对薛瑞尼教授表示真诚的感谢。

# 配置环境

## texlive + texmaker 环境搭建，支持 Windows, Linux, Mac 操作系统。
### [texlive](https://www.tug.org/texlive/) https://www.tug.org/texlive/
### [texmaker](https://www.xm1math.net/texmaker/) https://www.xm1math.net/texmaker/
Ubuntu 系统下可直接命令安装：
```shell
sudo apt install texlive-full
sudo apt install texmaker
```
## texstudio 环境搭建
### [texstudiio](http://texstudio.org/) http://texstudio.org/

# 模板下载及更新
## 下载开发版本：[GitHub](https://github.com/yuanhaizhuan/xtuthesis)
```shell
git clone https://github.com/yuanhaizhuan/xtuthesis.git
```

## 更新
打开终端，进入目录xtuthesis, 执行命令（Windows 用户在文件夹空白处按`Shift+鼠标右键`，点击“在此处打开命令行窗口”）：
```shell
    xetex xtuthesis.ins
```
即可得到 `xtuthesis.cls` 等模板文件。


# 模板使用
## Makefile的用法
```shell
make [{all|thesis|spine|doc|clean|cleanall|distclean}]
```
### 目标
* `make thesis`    生成论文 main.pdf；
* `make spine`     生成书脊 spine.pdf；
* `make doc`       生成模板使用说明书 xtuthesis.pdf；
* `make all`       生成论文和书籍，相当于 `make thesis && make spine`；
* `make clean`     删除示例文件的中间文件（不含 main.pdf）；
* `make cleanall`  删除示例文件的中间文件和 main.pdf；
* `make distclean` 删除示例文件和模板的所有中间文件和 PDF。

