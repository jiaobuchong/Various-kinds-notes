>>> person = ['name', 'age', 'sex']
>>> personinfo = ['zhoujie', 20, 'male']
>>> zip(person, personinfo)   #zip()函数将两个列表合并为一个包含元组的列表
[('name', 'zhoujie'), ('age', 20), ('sex', 'male')]

字典：
>>> dic1 = {'name':'zhoujie', 'age':20, 'sex':'male'}
>>> dic1['name']
'zhoujie'

使用工厂方法dict()生成字典：
fdict = dict(['name', 'zhoujie'], ['sex', 'male'])    #效率较慢
内建方法：
fromkeys(),字典中的元素具有相同的值，默认none
例：ddict = {}.fromkeys(('x', 'y'), -1)  有x和y这两个key，值是-1,默认是none

访问字典值：
直接使用key访问，key不存在会报错，可以使用had_key()或者in 和not in 判断，
但是has_key()方法即将废弃。
循环遍历：
例：for key in dict dict1.keys():
使用迭代器：for key in dict1:

访问字典的键和值：
dic1 = {'name':'zhoujie', 'age':21, 'sex':'male'}
for k in dic1:
        print k   #打印出键
for k in dic1:
        print dic1[k]   #打印出值

更新和删除：
直接使用键值访问更新,增加或修改；
内建的update()方法可以将整个字典的内容拷贝到另一个字典中。
del(dict1['a'])  删除字典中键值为a的元素
dict1.pop('a')   删除并且返回键为'a'的元素值
dict1.clear()    删除字典中所有元素
del(dict1)        删除整个字典

字典相关的内建函数：
type(),str(),cmp()(cmp很少用于字典的比较，比较依次是字典的大小、键、值)
工厂函数dict():
例如：dict(zip('x', 'y'), (1, 2)) 或者 dict(x=1, y=2)
{'y':2, 'x':1}
使用字典生成字典比用copy慢，因此推荐使用copy()
help(dict.keys)  #查看帮助文档

if else
if expression:
	statement(s)
python 使用缩进作为其语句分组的方法，建议使用4个空格代替缩进
if 1<2:
    print 'ok'

if 1<2:
    print 'ok'
    print 'ok'
if的有效范围就是if下缩进的代码块,
true表示非空的值（比如string，tuple, list, set, dictionary）
定义一个函数：
def fun():
    print "I'm happy"
fun()  #调用函数
if expression:
    satement(s)
else:
    statement(s)

if expression:
   statement(s)
elif expression:
   statement(s)
else：
   statement(s)

如：
   x = int(raw_input("请输入一个数："))
   if x >= 90:
       if x == 90:
           print "you got 90"
       print "great"
   elif x >= 80 and x < 90 :
      print "just so so"
   else:
      print "bad"

逻辑运算符 and or not 
not 1
1 and 1 and 1
1 or 0
if not fun():
    xxx

for 循环：
for iterating_var in sequence:
    statements(s)
该序列中的第一项赋值给迭代变量iterating_var,接下来执行语句块，列表中的每个项目分配到iterating_var,依次这样进行，直到整个序列被耗尽。

such as:
for x in [1, 2, 3, 4, 5]:
     print x, 'hello'
循环结构是用于迭代多个项的for语句，迭代形式可以循环序列的所有成员
range(i, j, [,步进值])
----如果创建的对象为整数，可以用range
----i为初始数值,i不选的话，默认为0
----j为终止数值，但不包括在范围内，步进值为可选参数，不选的话，默认为1

'''循环10次'''
for i in range(10):
    print 'hello'
for i in range(1, 10, 2):  #输出1 3 5 7 9
    print i

#1->100的和
 total = 0
 for i in range(1, 101):
    total += i
 print total

遍历序列:
 s = 'hello'
     for x in range(len(s)):
     print s[x]

 l = [1, 2, 3, 'a', 'b']
 for x in l: 
     if x>= 2:
          print x 

遍历字典:
d = {1:111, 2:222, 3:333, 4:444}
for x in d:
   print x    #只打印出字典的key
for x in d:
   print d[x]    #打印其值

for k, v in d.items():
   print k, ', ', v
else:
   print 'ending'  #for执行完后，再执行else

循环的控制：

import time     #导入一个模块
for x in range(5):
     print x
     time.sleep(1)
else:
     print 'ending'


 for x in range(1, 11):
     print x
     if x == 6:
         break    #结束for循环
     if x == 2:
         pass       #占位的作用，相当于空语句，代码桩
  else:
     print 'ending'
break和continue 和其他的语言也是类似的

if x == 5:
    exit()    #退出整个程序


while循环：
while expression:
    statement(s)

x = ''
while x != 'q':
    print 'hello'
    x = raw_input('please input something, q for quit:');
    if not x:
        break
    if x == 'c':
        continue
    print 'one more time~~~~~~'
else:
    print 'ending'


函数：
用户编写的函数
系统自带的函数
通常，定义一个函数时，通常使用def语句
def 函数名 （参数列表）:
    函数体
def fun():
    if True:
        print 'good'
fun();

形式参数和实际参数：
形参和实参
设定默认参数时，从左到右去赋值
变量的作用域
局部变量：函数里定义的变量
全局变量：程序顶部定义的变量， 让局部变量变成全局变量 用global关键字
def fun():
    global y
    y = 'global'

>>>sum([1, 2, 3])
>>>6
>>>range(4)
>>>[0, 1, 2, 3]


多类型传值
向函数传元组和字典
>>> print '%s : %s' % ('name', 'jack')  #% 格式化输出
name : jack
>>>def f(x, y):
...     print "%s : %s" % x, y
>>>t = ('name', 'jack')
>>>f(*t)    #加了*，就将这个元组给传过去了
name : jack

>>>def f(name='name', age=0):
...     print 'name : %s' % name
...     print 'age : %d' % age
>>> f(name='milo', age=21)     #可以这样加参数
name : milo
age : 21

>>> f(age=21, name='milo')     #参数还可以调换
name : milo
age : 21

>>> d
{'age': 30, 'name': 'jack'}    #如果将字典传给那个函数，会省很多事
>>> f(**d)     #加两个*,将字典传过去了
name : jack
age : 30

>>>d['age'] = 22 #改变age值
>>> f(**d)
name : jack
age : 22

>>> d = {'a':21, 'n':'jack'}
>>> d
{'a': 21, 'n': 'jack'}
>>> f(d['n'], d['a'])
name : jack
age : 21

处理多余实参
def fun(*args, **kw)

>>> def f(x, *args):   #args可以接收多余的参数，并以元组保存
...     print x
...     print args
... 
>>> f(1, 2, 3, 4, 5)
1
(2, 3, 4, 5)
>>>

>>> def f(x, *args, **kwargs):   #
...     print x
...     print args
...     print kwargs
... 
>>> f(1)
1
()
{}
>>> f(1, 2, name='jack', age='21')   #有映射关系的就存入字典中
1
(2,)
{'age': '21', 'name': 'jack'}

函数的应用，应该多return，尽量少打印

Lambda
匿名函数
--lambda函数是一种快速定义单行的最小函数，是从Lisp借用来的，可以用在任何需要函数的地方
>>> g = lambda x, y:x * y
>>> g
<function <lambda> at 0xb721972c>
>>> g(2, 3)
6
>>> 
lambda语句中，冒号前是参数，可以有多个，用逗号隔开，冒号右边的是返回值
lambda语句构建的其实是一个函数对象

1、使用python写一些执行脚本时，使用lambda可以省去定义函数的过程，让代码更加精简
2、对于一些抽象的，不会别的地方再复用的函数，有时候给函数起个名字也是个难题，使用lambda不需要考虑命名的问题。
3、使用lambda在某些时候让代码更加容易理解

reduce为逐次操作list里的每项，接收的参数为2个，最后返回的为一个结果
>>> def myadd(x, y):
...     return x + y
... 
>>> sum = reduce(myadd, (1, 2, 3))
>>> sum
6
>>> 

递归求阶乘：
def f(n):
    if n == 1:
        a = 1
    else:
        a =  n * f(n-1)
    return a
print f(5)
#用reduce和range()实现5的阶乘
>>> l = range(1, 6)
>>> l
[1, 2, 3, 4, 5]
>>> def f(x, y):
...     return x * y
... 
>>> reduce(f, l)
120
>>> 

这里跟lambda函数有什们关系，如下：
>>> f = lambda x, y : x * y  #定义一个匿名函数
>>> reduce(f, l)
120
>>> 
>>> reduce(lambda x, y : x * y, l)
120

switch:
但是python没有提供switch语句
python可以通过字典实现switch语句的功能
实现方法分两步
首先，定义一个字典
其次，调用字典的get()获取相应的表达式
{1:case1, 2:case2}.get(x, lambda *arg, **key:)()
比如下面的一段程序：
#coding:utf-8
from __future__ import division
def add(x, y):
    return x+y  
def jian(x, y):
    return x-y 
def cheng(x, y):
    return x*y
def chu(x, y):
    return x/y
operator = {'+' : add, '-' : jian, '*' : cheng, '/'     : chu}
def f(x, o, y):
    print operator.get(o)(x, y)
f(3, '+', 2)

如下也可以达到同样的效果：
def f(x, o, y):
    result = {'+':x+y, '-':x-y, '*':x*y, '/':x/y}
    return result.get(o)
printf(3, '+', 2)

内置函数:
abs(-10)  #10，返回绝对值
max()    #取列表中最大值
min()   #取列表中最小值
len()  #获取列表长度
>>> divmod(5, 2)   #得出商和余数
(2, 1)
>>>pow(2, 3, 4)
0
round(10)  #10.0，返回一个浮点数

callable() #测试某个函数是否可以调用
isinstance()
>>> l
[23, 45, 67, 78, 43, 23]
>>> isinstance(l, list)   #判断某个对象是不是那个类的
True
cmp()   #用来比较两个字符串
range()  #快速形成一个序列
>>> range(10)
[0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

xrange()  #在大数据量的时候，效率会很高

>>> long
<type 'long'>
>>> int
<type 'int'>
>>> str
<type 'str'>
>>> list
<type 'list'>
>>> l
[23, 45, 67, 78, 43, 23]
>>> tuple(l)   #将一个列表转化为元组
(23, 45, 67, 78, 43, 23)
>>> 
type()  #查看某个对象的类型
int()  #转化为整型
long()  #长整型
float()
complex()
str()
list()
tuple()
hex()
oct()
chr()
ord()

>>> s
'123'
>>> s + 12
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
TypeError: cannot concatenate 'str' and 'int' objects
>>> int(s) + 12   #一个字符串需要转化为整型才能和数字相加
135
>>> 

内置函数：
string 函数
str.capitalize()    #将首字母大写
str.replace()       #替换
str.split()          #切割

>>> s = 'hello'
>>> s
'hello'
>>> s.capitalize()
'Hello'
>>> s.replace('hello', 'girl')
'girl'
>>> ss = '124324112411532113411'
>>> ss.replace('1', 'x')
'x24324xx24xx532xx34xx'
>>> ss.replace('1', 'x', 2)   #替换两次
'x24324x12411532113411'
>>> 

>>> ip = '210.30.208.249'
>>> ip.split('.')
['210', '30', '208', '249']
>>> ip.split('.', 1)
['210', '30.208.249']
>>> ip.split('.', 2)    #切割两次
['210', '30', '208.249']
>>> 

另外一种替换:
import string 
string.replace()

序列处理函数：
len()  
max()
min()
filter()
zip()
map()
reduce()

filter()的用法
>>> def f(x):
...     if x > 5:
...             return True
... 
>>> f(10)
True
>>> f(3)
>>> l = range(10)
>>> l
[0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
>>> filter(f, l)  #f这个自定义函数返回Ture的话，打印大于5的值
[6, 7, 8, 9]
>>> 

zip()的用法：
>>> name = ['Jack', 'Chou', 'Jiaobuchong']
>>> age = [21, 20, 2]
>>> tel = ['110', '119', '120']
>>> zip(name, age, tel)
[('Jack', 21, '110'), ('Chou', 20, '119'), ('Jiaobuchong', 2, '120')]
>>> 

map()的用法：
>>> map(None, name, age, tel)
[('Jack', 21, '110'), ('Chou', 20, '119'), ('Jiaobuchong', 2, '120')]
>>> 

map()和zip()的区别：
>>> test = [1, 2]
>>> zip(name, age, tel, test)
[('Jack', 21, '110', 1), ('Chou', 20, '119', 2)]
>>> map(None, name, age, tel, test)
[('Jack', 21, '110', 1), ('Chou', 20, '119', 2), ('Jiaobuchong', 2, '120', None)]
>>> 其中map()中的None参数还可以作为一个函数传入, such as :
>>> a = [1, 3, 5]
>>> b = [2, 4, 6]
>>> def mf(x, y):
...     return x * y
... 
>>> map(None, a, b)
[(1, 2), (3, 4), (5, 6)]
>>> map(mf, a, b)
[2, 12, 30]
>>> 

reduce()的用法：
>>> def rf(x, y):
...     return x + y
... 
>>> reduce(rf, l)
190
>>> 
>>> l
[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19]
>>> reduce(lambda x, y:x + y, l)
190
>>> filter(lambda x:x % 2 == 0, l)  #其中x是参数， （x % 2 == 0）是返回值，这个lambda匿名函数会对l这个列表中的每一个数进行遍历
[2, 4, 6, 8, 10, 12, 14, 16, 18]
>>> 

列表表达式：
>>> l = range(1, 10)
>>> l
[1, 2, 3, 4, 5, 6, 7, 8, 9]
>>> a = [x*2+10 for x in l]
>>> a
[12, 14, 16, 18, 20, 22, 24, 26, 28]
>>> b = [x for x in l if x % 2 == 0]
>>> b
[2, 4, 6, 8]
>>> 

模块：
模块是Python组织代码的基本方式
Python的脚本都是用扩展名为py的文本文件保存的，一个脚本可以单独运行，也可以导入另一个脚本中运行，当脚本被导入运行时，将其称为module，
模块名与脚本的文件名相同
such as我们编写了一个名为items.py的脚本，则可以在另外一个脚本中用import items语句导入它
cd /usr/lib/python2.7   里面有很多module string 

module_func.py
def show(string):
    print string
print __name__

python module_func.py 后打印 
__main__

module.py:
import module_func
module_func.show('hello, module')

python module.py 后打印:
module_func
hello, module

先是在当前目录下查找模块文件，当前目录下没有，就到lib下，然后再到 ……
python的模块可以按照目录组织为包
创建一个包的步骤是：
建立一个名字为包名字的文件夹
在该文件夹下创建一个__init__.py文件，
根据需要在该文件夹下存放脚本文件、已编译扩展及子包
-import pack.m1, pack.m2, pack.m3
如：import module.hello  #在module文件夹外，导入module包下的hello.py文件

这是func.py:
def show(s):     
    print s
在python的交互模式下：
>>> import func
>>> func.show('hello')   #这是一种调用方式import
hello
>>> import func as f   #第二种 import as
>>> f.show('hello')
hello
>>> from func import show   #第三种 from … import …
>>> show('hello, girl')
hello, girl
>>> 

正则表达式模式被编译成一系列的字节码，然后由c编写的匹配引擎执行
通过re模块
正则表达式功能有限，原字符：
. ^ $ * + ? {} [] \ | ()

[]  指定一个字符集：
>>> import re                                                                  
>>> s = 'abc'                                                                  
>>> s = r'abc'       #模式                                                          
>>> re.findall(s, 'aaaagd')                                                    
[]                                                                         
>>> re.findall(s, 'abc')  #找到结果后返回值                                               
['abc']                                                                      
>>>   
>>> str = 'top tip tabf twp tep'                                            
>>> res = r't[io]p'   #[]的作用就体现在这里                                                          
>>> re.findall(res, str)                                                     
['top', 'tip']                                                                
>>>    
原字符在字符集中不起作用  [akm$] 就是一个普通的符号
补集匹配不在区间范围内的字符：[^5]
^  匹配行首， 匹配字符串中的每个换行
$  匹配字符串尾，或换行字符后面的任何位置
[0-9a-zA-Z]

>>>r = r'\^abc'   #匹配小^

\
反斜横杠后面可以加不同的字符以表示不同特殊意义
也可以用于取消所有的元字符：  \[或\\
\d 匹配任何十进制数，相当于类 [0-9]
\D 匹配任何非数字字符，相当于类[^0-9]
\s 匹配任何空白字符，相当于类[\t\n\r\f\v]
\S 匹配任何非空白字符，类[^\t\n\r\f\v]
\w 匹配任何字母数字字符，类[a-zA-Z0-9_]
\W 匹配任何非字母数字字符，类[^a-zA-Z0-9_]

重复：
*  指定前一个字符可以被匹配0次或更多次，而不只是只有一次
+  匹配一次或更多次，最少要有1次
?  匹配一次或0次,表示可有可无
>>> r = r'^010-?\d{8}$'  #{8}重复8次
>>> re.findall(r, '010-23456789')
['010-23456789']
>>> 
贪婪模式：
>>> r = r'ab+'
>>> re.findall(r, 'abbbbbbb')
['abbbbbbb']

非贪婪模式：
>>> r = r'ab+?'  #加以个?
>>> re.findall(r, 'abbbbbbb')
['ab']
>>> 
{0,} 等同于 *   {1,} 等同于 +    {0,1} 等同于 ?    最好使用 *  +  ?    

使用正则表达式：
re模块提供了一个正则表达式接口，可以让你将REstring编译成对象并用他们来进行匹配
>>> import re
>>> r1 = r'\d{3,4}-?\d{8}'
>>> re.findall(r1, '010-12345678')
['010-12345678']
>>> p_tel = re.compile(r1)   #对正则进行编译，编译后成为一个对象，匹配起来速度更快
>>> p_tel
<_sre.SRE_Pattern object at 0xb735a180>
>>> p_tel.findall('010-12345678')
['010-12345678']
>>> 
>>> 
>>> csvt_re = re.compile(r'csvt', re.I) #re.I 不区分大小写
>>> csvt_re.findall('cSvt')
['cSvt']
>>> 
字符串前加“r”反斜杠就不会被任何特殊方式处理

编译后的正则 RegexObject 实例有一些方法和属性，完整列表查阅Python Library Reference
match() 决定RE是否在字符串刚开始的位置匹配，返回MatchObject实例对象
search() 扫描整个字符串，找到这个RE匹配的位置，返回MatchObject实例对象
MatchObject 实例方法
group()  返回被RE匹配的字符串
start()  返回匹配开始的位置
end()    返回匹配结束的位置
span()   返回一个远祖包含匹配(开始， 结束的位置)
在常见的程序中，是将MatchObject 保存在一个变量里，检查其是否为空
>>> import re
>>> hello_re = re.compile(r'hello', re.I)
>>> x = hello_re.match('hello dfhvdoi hello fdvjhello')
>>> x.group()
'hello'
>>> hello_re.search('vdnb hello dhviksd')
<_sre.SRE_Match object at 0x9f5a0c8>      #MatchObject 实例
>>> hello_re.finditer('klvndfkl hello fdvnjhello')
<callable-iterator object at 0x9f1e1ac>
>>> y = hello_re.finditer('klvndfkl hello fdvnjhello')
>>> y.next()
<_sre.SRE_Match object at 0x9f5a100>  #MatchObject 实例
>>> 

findall()  找到RE匹配的所有子串，将他们作为一个列表返回
finditer() 找到RE匹配的所有子串，并把他们作为一个迭代器返回

re模块也提供了许多顶级函数调用:match(), search(), sub(), split(), findall()
>>> s = 'hello csvt'
>>> s.replace('csvt', 'python')
'hello python'
>>> rs = r'c..t'
>>> re.sub(rs, 'python', 'csdt cdgdtb caat cfft cggtdcsnv')   #使用正则进行替换
'python cdgdtb python python pythondcsnv'
>>> re.subn(rs, 'python', 'csdt cdgdtb caat cfft cggtdcsnv')  #subn表示替换的次数
('python cdgdtb python python pythondcsnv', 4)
>>> ip = '210.30.208.249'
>>> ip.split('.')
['210', '30', '208', '249']   
>>> s = '123+456-789*000'    #使用正则进行分割
>>> re.split(r'[\+\-\*]', s)
['123', '456', '789', '000']
															
#显示中文
#coding:utf8
#coding=utf8
#encoding=utf8
#encoding:utf8
fanyi.youdao.com/openapi.do?keyfrom=<keyfrom>&key=<key>&type=data&doctype=json&version=1.1&q=



