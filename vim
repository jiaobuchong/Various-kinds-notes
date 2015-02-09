:%s/a/b/g           #%s是替换的模式(表示全文替换)，将文本中的a替换为b，g代表从行首到行尾
:n1,n2s/word1/word2/gc
从 n1 行到 n2 行之间寻找 word1，并替换成 word2
c 用来询问
n1, n2 可替换成 $ 代表最后一行
如最后一行可写成 :$,$s/w1/w2/g

:1, 10s/^/\/\//g    #1到10行加 // 注释  :n1, n2s/old/new/g
:! 执行shell命令    :! ls -l
:/php    #查询文本中的php这个单词，按n键上下走
:set ic   忽略大小写
:w hello.py  #将当前文件另存为hello.py
:4, 8 d       #将4到8行删除
:set fileencoding  #显示当前文件的默认编码
:set fileencoding=utf8  #将当前文件的编码设为utf8
:12   #定位到12行

gg 到第一行
G  到最后一行
nG 到第几行 or :n
0  光标移动到行首

x 删除光标所在处的字符
nx 删除光标所在处的后n个字符
D 删除光标所在处到行尾的内容
:n1, n2 d 删除n1到n2的行
dG 删除文档中全部内容

p、P 大写的P在光标的行上复制

vim 技巧
:r(在命令模式下) /etc/test.php test.php中的内容将被倒入到当前的文件中，
:! which ls  执行shell 命令

:r !date  将命令的结果写入当前文件中

shift＋v，就是选中当前行就是有括号所在的行
shift＋<，将当前行向右移动一个tab，此时有括号已经和做括号对齐

关键字补全：
Forward: Ctrl+x, Ctrl+N
Backward:Ctrl+x, Ctrl+p

整行补全：
Ctrl+x, Ctrl+l

函数名补全：
Ctrl+x, Ctrl+o

复制：
下面是vim复制粘贴的基本命令：
y^复制至行首，或y0。不含游标所在处字元。
y$复制至行尾。含游标所在处字元。
yw复制一个word。
y2w复制两个字（单词）。
yG复制至档尾。
y1G复制至档首。
p小写p代表贴至游标后（下）。
P大写P代表贴至游标前（上）。

选择性复制：
按ESC进入命令模式后，按v进入可视模式。然后用方向键选定你的内容.（假如，移动光标上下左右，选中第三行和第四行的内容），然后按y键复制选定的内容；再用方向键移动到你要粘贴的地方（假如，移动指针到第十行），最后按p键来粘贴。

:e ./   #可以打印出目前目录下的文件
：vsplit  #垂直分屏
ctrl + w, h j k l四个方向进行切换
：vertical res 10 #设置分屏宽度


:31, 34 w >> ./two.txt  把编辑文件的几行内容追加到一个新文件中
:ex two.txt   可以转到去编辑two.txt文件

从网上粘贴一段代码到vim中，然后进入vim的插入模式，shift+lns即可复制。

vi visual interface 可视化借口
vim 
  -vim支持多级撤销
  -vim可以跨平台
  -语法高亮
  -支持图形界面
模式：
command mode
insert mode
last line mode
	
ctrl + f  向下翻页(front)
ctrl + b  向上翻页(back)
ctrl + d 向下翻半页(down)
ctrl + u 向上翻半页(up)

0 → 数字零，到行头
dG  #将全部文档中内容全部删除
d 2 w 从光标所在处开始，删除两个单词  

A  在光标所在行尾插入
I 在光标所在行首插入
cw → 替换从光标所在位置后到一个单词结尾的字符, 会把第一个字符删掉，进入插入模式
cc 会把一行插入，进入插入模式
u  ——撤销undo
ctrl+r ——返回 redo
shift+v  ——选中光标所在行

：vnew  ——竖着打开两个文件，在当前vim窗口中，如果你要新建一个文件，又想从这个文件中复制一些代码，可以使用这个命令
ctrl+ww  ——光标在窗口间切换
gg  到首行
G  最后一行
shift+v 行选
ctrl+v 块选
x把某一个字符剪切，p复制

ctrl+t    往右移动对齐
ctrl+d    往左移动对齐  设置tab为4个空格，而某行只缩进了3个空格。这时执行ctrl+t可以再缩进一个空格达到对齐的效果）
块选  输入 >  ——缩进
块选  输入  <  ——缩进返回

1.多行注释：
  a. 按下Ctrl + v，进入列模式;
  b. 在行首选择需要注释的行;
  c. 按下“I”，进入插入模式；
  d. 然后输入注释符（“//”、“#”等）;
  e. 按下“Esc”键。
2.删除多行注释：
  a. 按下Ctrl + v, 进入列模式;
  b. 选定要取消的注释符;
  c. 按下“x”或者“d”.

zz 编辑行定位到屏幕中间，zt和zb分别定位到屏幕顶部和底部

定义快捷键
在命令模式下
:map ctrl+vp I//<ESC>  (这样就可以按ctrl+p在行首加//)
删除//
:map ctrl+vB 0xx<ESC> (这样按ctrl+b就可以删除前面的注释)

:map ctrl+vh ijiaobuchong<ESC>(按快捷键ctrl+h可以插入jiaobuchong)
ab mymail jiabuchong@sina.cn (在vim中输入mymail 就可以完整的显示jiaobuchong@sina.cn)

