# 关于 [SHU-Bachelor-Thesis-OSC](https://github.com/EnJiang/SHU-Bachelor-Thesis-OSC)
本模板是上海大学本科生毕业论文latex模板-开源社区版本。

此模板基于[SHU-Bachelor-Thesis](https://github.com/alfredbowenfeng/SHU-Bachelor-Thesis)修改得来。

本身[SHU-Bachelor-Thesis](https://github.com/alfredbowenfeng/SHU-Bachelor-Thesis)又是由
[ShuThesis](https://github.com/ahhylau/shuthesis)修改得来的。
后者是一个支持上海大学硕士和博士毕业论文的latex模板，前者对其进行了一定的改进，但是还有诸多遗留问题。

本模板对[SHU-Bachelor-Thesis](https://github.com/alfredbowenfeng/SHU-Bachelor-Thesis)
遗留的问题又进行了进一步改进，使其尽量与上海大学本科生论文的MS Word版本格式一致。

感谢前面几位同学的工作和开源精神。
希望本模板能帮助到本科生同学，希望越来越多的同学能加入到开源社区大家庭。

模板的维护是一个相当考验细节处理的工作，欢迎pull requests。
作者会尽可能尽快处理。

# 使用步骤

## 本地
- 下载本模板到本地解压，或git clone本模板
- 用学院给的论文模板创建封面，命名为 cover.pdf 文件保存至根目录下（替换原文件）
- 修改 data 文件夹下的.tex文件，编辑论文内容
- 通过根目录下的 main.tex 文件添加或删去章节
- 通过根目录下的 main.tex 文件编译

## Overleaf
- 下载本模板到本地解压，或git clone本模板
- 用学院给的论文模板创建封面，命名为 cover.pdf 文件保存至根目录下（替换原文件）
- 删除.otf文件（保证上传文件大小在50M以内）
- 将模板压缩为.zip文件
- 打开 Overleaf，点击创建新项目并上传项目，将zip文件拖入对话框
- 加载完成后，点击左上角菜单，在编译器处选择 XeLaTeX
- 按下 Ctrl-S 保存并编译

# 注意事项

## 论文信息

你需要在 `main.tex` 的导言区修改你的个人信息， `data/cover.tex` 和 `data/declaration.tex` 不需要进行修改.

```tex
% 下面是论文相关信息的填写：
% 论文题目：
\newcommand{\iTitle}{基于摸鱼链的隐私保护摸鱼学习技术研究}
% 学院：
\newcommand{\iSchool}{摸鱼工程与科学学院}
% 专业：
\newcommand{\iMajor}{摸鱼科学与技术}
% 学号：
\newcommand{\iStudentNumber}{20122012}
% 学生姓名：
\newcommand{\iStudentName}{莫雨}
% 指导老师：
\newcommand{\iSupervisorName}{余墨}
% 起讫时间：
\newcommand{\iThesisTime}{2024年1月15日起5月24日止}
```

如果在签字后需要覆盖原创性声明部分，可以增加 pdf 文件后，修改 `main.tex` 文章区起始的代码.

```tex
% before:
\include{data/cover}
\include{data/declaration}
% 如果需要直接覆盖封面和原创性声明，请将下面一行取消注释，并注释上面两行。
% \includepdf[pages={1,2}]{cover.pdf}

% after:
\include{data/cover}
\includepdf[pages={1}]{declaration.pdf}
```