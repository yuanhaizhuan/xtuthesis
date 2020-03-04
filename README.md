# xtuthesis（湘潭大学学位论文模板）
LaTeX Thesis Template for Xiangtan University (thuthesis-based development)

此宏包旨在建立一个简单易用的湘潭大学学位论文 LaTeX 模板，该模板基于薛瑞尼教授开发的清华大学学位论文 LaTeX 模板做了一定的修改，在此对薛瑞尼教授表示真诚的感谢。

# 环境配置（推荐方案一）

## 方案一（开发环境）： texlive + texmaker，支持 Windows, Linux, Mac 操作系统。
### texlive下载网址： https://www.tug.org/texlive/
### texmaker下载网址： https://www.xm1math.net/texmaker/
### Ubuntu 系统下可直接命令安装：
```shell
sudo apt install texlive-full
sudo apt install texmaker
```
## 方案二： texstudio
### texstudio下载网址： http://texstudio.org/

# 模板下载及更新
## 下载开发版本：[GitHub](https://github.com/yuanhaizhuan/xtuthesis)
```shell
git clone https://github.com/yuanhaizhuan/xtuthesis.git
```

## 更新 (若使用 Makefile 文件编译可略去此步)
打开终端（Windows 用户打开命令行窗口），进入目录 xtuthesis, 执行命令：
```shell
    xelatex xtuthesis.ins
```
即可得到 `xtuthesis.cls` 等模板文件。


# 模板使用 （推荐方法一，适合 Linux 操作系统）
## 编译方法一： 使用 Makefile 文件，命令如下
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
### 优点：更新索引时，无需手动多次编译。

## 编译方法二： 直接使用 xelatex 和 bibtex（用于参考文献编译） 命令文件。
### 缺点：更新索引时，需手动多次编译。