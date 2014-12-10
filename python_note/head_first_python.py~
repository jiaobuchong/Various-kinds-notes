list
>>> movies = ['The Holy Grail', 'The life of Brian', 'The meaning of life']
>>> movies.insert(1, 1975)
>>> movies.insert(3, 1979)
>>> movies.append(1983)
>>> movies
['The Holy Grail', 1975, 'The life of Brian', 1979, 'The meaning of life', 1983]
>>> 

iterate your list:

>>> for each_flick in movies:
...     print(each_flick)
... 
The Holy Grail
1975
The life of Brian
1979
The meaning of life
1983
>>> 

while:
>>> count = 0
>>> while count < len(movies):
...     print(movies[count])
...     count += 1
... 
The Holy Grail
1975
The life of Brian
1979
The meaning of life
1983
>>> 

isinstance BIF let you check if a specific identifier holds data of specific type
>>> names = ['Jack', 'Tom']
>>> isinstance(names, list)
True
>>> 

dir(__builtins__)  可以看到python提供的内置方法列表所有那些小写字母都是BIF， help(input) 就会得到这个input的功能描述
handle many levels of nested lists,处理多维数组：
>>> nums
[4, 5, 6, [7, 8, [10, 34, 27]]]
>>> nums[3][2][1]
34
>>> for each_num in nums:
...     if (isinstance(each_num, list)):
...             for nested_num in each_num:
...                     if isinstance(nested_num, list):
...                             for deeper_num in nested_num:
...                                     print(deeper_num)
...                     else:
...                             print(nested_num)
...     else:
...             print(each_num)
... 
4
5
6
7
8
10
34
27
>>> 

reusable function:
nums = [4, 5, 6, [7, 8, [10, 34, 27]]]
def print_lol(the_list):
     for each_num in the_list:
         if isinstance(each_num, list):
             print_lol(each_num)   #递归
         else:
             print each_num
print_lol(nums)

Python Lingo(术语)
"BIF"a built in function (内置函数)
"Suite" a block of Python code, which is indented to indicate grouping (作用域，代码块，通过缩进来指示分组)
"Batteries included" 功能齐全

>>> import sys
>>> sys.path          #Python interpreter searches for modules

#导入模块
import nester  #调用nester中的print_lol函数时，nester.print_lol
from nester import print_lol  #可以直接调用nester中的print_lol函数

BIF:
list()   #工厂方法创建一个空的、新的列表
range()
enumerate()
int()   
id()
next()

文件：
>>> import os
>>> os.getcwd()
'/home/jack/python'   #current working directory
>>> os.chdir('./file')  #change the folder,切换目录
>>> os.getcwd()
'/home/jack/python/file'
>>> 
>>> data = open('sketch.txt')
>>> print(data.readline(), end='')   #读文件中的一行数据
dnvidbsvisd
>>> print(data.readline(), end='')   #读取下一行数据
vdsbkjvbsdklv
>>> 

>>> data.seek(0)    #让文件指针指到文件的开始
0
>>> for each_line in data:
...     print(each_line, end='')
... 
dnvidbsvisd
vdsbkjvbsdklv
dvbkjsdvbs
sdvjkdsvbsdvcosdvns
sbv skjdvionv  v速度呢
我是周杰，我为自己代言
我是周杰，我为自己代言
我是周杰，我为自己代言

>>> data.close()  #关闭文件资源

这是sketch.py里的代码：
 data = open('sketch.txt')
 for each_line in data:
     (role, line_spoken) = each_line.split(':')    #这里在运行时会有个问题，比如一句话里有多个" : "怎么办，所以得告诉python有多少次分割 ValueErrors
     print(role, end='')
     print(' said: ', end='')
     print(line_spoken, end='')
 data.close()

改进后的代码：
 data = open('sketch.txt')
 for each_line in data:
     (role, line_spoken) = each_line.split(':'， 1)    #这里在运行时还会有个问题，比如sktch.txt中有空行怎么办，空的一行怎么去找" : " ValueErrors
     print(role, end='')
     print(' said: ', end='')
     print(line_spoken, end='')
 data.close()

再改进：
 data = open('sketch.txt')
 for each_line in data:
     if not each_line.find(':') == -1:
         (role, line_spoken) = each_line.split(':'， 1)    #perfect
         print(role, end='')
         print(' said: ', end='')
         print(line_spoken, end='')
 data.close()

即使在你的文本文件sketch.txt中保证了一行只有一个 ":", 并且没有空行，但如果你的代码还是像开始的一样没有经过处理，python解释器是不会允许的
还是会弹出一个run time错误

import os
if os.path.exists('sketch.txt'):      #检测文件是否存在
else:                                  

但解决之道还可以使用 异常处理机制
If you try to code for every possible error, you'll be at it fot a long time, because all that extra logic takes a while to work out.

对上面的代码使用异常处理机制：
 10 try:
 11     data = open('sketch.txt')
 12     for each_line in data:
 13         try:
 14             (role, line_spoken) = each_line.split(':', 1)   #空行时的runtime error通过错误处理机制搞定了
 15             print(role, end='')
 16             print(' said: ', end='')
 17             print(line_spoken, end='')
 18         except:
 19             pass
 20     data.close()
 21 except:
 22     print('The data file is missing!')     #文件不存在时，错误处理机制也搞定了 File I/O errors

对上面的代码使用特定的异常处理机制：
 10 try:
 11     data = open('sketch.txt')
 12     for each_line in data:
 13         try:
 14             (role, line_spoken) = each_line.split(':', 1)   #空行时的runtime error通过错误处理机制搞定了
 15             print(role, end='')
 16             print(' said: ', end='')
 17             print(line_spoken, end='')
 18         except ValueError:    #ValueError 
 19             pass
 20     data.close()
 21 except IOError:
 22     print('The data file is missing!')     #文件不存在时，错误处理机制也搞定了 File I/O errors

将你的数据保存在文件里：
用BIF open()打开一个文件时，默认是以可读的形式打开  open('sketch.txt', 'w')   以可写的形式打开一个文件
>>> out = open('test.txt', 'w')   #以可写的形式打开一个文件
>>> print('write to file', file=out)   #这样就可以写入文件了
>>> out.close()
output = open('data', 'w+')   #追加的形式写文件

下面的代码就是将数据写入到你的文件：
  1 open('sketch.txt')
  2 man = []
  3 girl = []
  4 
  5 try:
  6     data = open('sketch.txt')
  7     for each_line in data:
  8         try:
  9             (role, line_spoken) = each_line.split(':', 1)
 10             line_spoken = line_spoken.strip()              #去除字符串的首位空格
 11             if role == 'Man':
 12                 man.append(line_spoken)      #向一个列表后加入字符串
 13             elif role == 'Girl':
 14                 girl.append(line_spoken)
 15         except ValueError:
 16             pass
 17     data.close()
 18 except IOError:
 19     print('The datafile is missing!')
 20 #print(man)
 21 #print(girl)
 22 
 23 try:
 24     man_file = open('man.txt', 'w')
 25     girl_file = open('girl.txt', 'w')
 26 
 27     print(man, file=man_file)     #将数据写入到文件
 28     print(girl, file=girl_file)
 29 
 30     #man_file.close()     
 31     #girl_file.close()   最好不要在这写关闭文件，万一上面的数据出问题了，就中断了文件就得不到关闭了
 32 except IOError:
 33     print('file error')
 34 finally:
 35    if 'man_file' in locals():
 36        man_file.close()
 37    if 'girl_file' in locals():
 36        girl_file.close()   #无论出现什么问题，这段代码都会执行

locals()   #返回当前程序范围内的变量，以字典的形式返回
if data in locals():  

上面的23到36行可以写成下面这样：
 21 try:
 22     with open('man.txt', 'w') as man_file, open('girl.txt', 'w') as girl_file:  用了with之后不必考虑关闭文件的细节
 23         print(man, file=man_file)
 24         print(girl, file=girl_file)
 25 except IOError as err:
 26     print('file error:' + str(err))

sys.stdout 标准输出

import pickle  #腌制数据
pickle.dump()和pickle.load()将数据写入文件或从文件中读取数据

排序的两种方法：
in-place sorting  ,如：
>>> data = [2, 3, 5, 1, 10, 9]
>>> data.sort()
>>> data
[1, 2, 3, 5, 9, 10]
>>> 

copied sorting   #sorted() 如:
>>> data = [2, 3, 5, 1, 10, 9]
>>> data1 = sorted(data)
>>> data
[2, 3, 5, 1, 10, 9]
>>> data1
[1, 2, 3, 5, 9, 10]
>>> 

#下面有两份时间的文本文件，
james.txt:
2-34, 3:21, 2.34, 2.45, 3.01, 3-01, 2:01, 3:10, 2-22
miky.txt:
2:22, 3.01, 3:01, 3.02, 3:02, 3.02, 3:22, 2.49, 2:38
下面的代码是对这两个文本文件中的时间进行一个排序：
1 #process the string to replace any dashes or colons found with a period and return the sanitized string
  2 def sanitize(time_string):
  3     time_string = time_string.strip()
  4     if '-' in time_string:
  5         splitter = '-'
  6     elif ':' in time_string:
  7         splitter = ':'
  8     else:
  9         return(time_string)
 10     (mins, secs) = time_string.split(splitter)
 11     return(mins + '.' + secs)
 12 
 13 #reads the data from the data files remains unchanged
 14 with open('james.txt') as jam: data = jam.readline()
 15 jams = data.strip().split(',')
 16 with open('miky.txt') as mik: data = mik.readline()
 17 miky = data.strip().split(',')
 18 
 19 #create two new, initially empty lists
 20 clean_jams = []
 21 clean_miky = []
 22 
 23 #take each of the data items in the original lists,sanitize them, and them append the sanitized data to the new list
 24 for each_t in jams:
 25     clean_jams.append(sanitize(each_t))
 26 for each_t in miky:
 27     clean_miky.append(sanitize(each_t))
 28 
 29 #display the sorted list
 30 print(sorted(clean_jams, reverse = True))
 31 print(sorted(clean_miky, reverse = True))

根据List Comprehension通常用于从一个已经存在列表生成一个新的列表，所以20行到27行的代码可以换为：
clean_jams = [sanitize(each_t) for each_t in jams]
clean_miky = [sanitize(each_t) for each_t in miky]
将近8行的代码两行就搞定了
The beauty of list comprehensions

set()  集合，类似数学上的集合，一个集合不能有重复的元素
python中类定义完毕后产生类对象, 类对象才能产生实例对象, 
工厂函数(factory function)
python的set和其他语言类似, 是一个无序不重复元素集, 基本功能包括关系测试和消除重复元素. 集合对象还支持union(联合), intersection(交), difference(差)和sysmmetric difference(对称差集)等数学运算.  
sets 支持 x in set, len(set),和 for x in set。作为一个无序的集合，sets不记录元素位置或者插入点。因此，sets不支持 indexing, slicing, 或其它类序列（sequence-like）的操作。 
      
这是改进后的代码：
  1 #process the string to replace any dashes or colons found with a period and return the sanitized string
  2 def sanitize(time_string):
  3     time_string = time_string.strip()
  4     if '-' in time_string:
  5         splitter = '-'
  6     elif ':' in time_string:
  7         splitter = ':'
  8     else:
  9         return(time_string)
 10     (mins, secs) = time_string.split(splitter)
 11     return(mins + '.' + secs)
 12 
 13 #reads the data from the data files remains unchanged
 14 def get_coach_data(filename):
 15     try:
 16         with open(filename) as f:
 17             data = f.readline().strip().split(',')
 18             return(data)
 19     except IOError as ioerr:
 20         print('file error:' + str(ioerr))
 21         return(None)
 22 
 23 #invoke the function get_coach_data()
 24 jams = get_coach_data('james.txt')
 25 miky = get_coach_data('miky.txt')
 26 
 27 #create two new, initially empty lists
 28 #set() get rid of duplicates list values
 29 clean_jams = set([sanitize(each_t) for each_t in jams])
 30 clean_miky = set([sanitize(each_t) for each_t in miky])
 31 
 32 #take each of the data items in the original lists,sanitize them, and them append the sanitized data to the new list
 33 #display the sorted list
 34 print(sorted(clean_jams)[0:3])
 35 print(sorted(clean_miky)[0:3])

字典：
cleese = {}
palin = dict()  #或者使用一个工厂函数创建一个空字典
such as：
palin = {'Name':'Michael Palin', 'Occupations':['comedian', 'writer', 'actor']}
后来文本文件增加了姓名和生日：
james.txt
Jack Chou, 1993-9-17, 2-34, 2:34, 3:21, 2.34, 2.45, 3.01, 3-01, 2:01, 3:10, 2-22
于是这次采用python的字典这种数据结构和列表的pop()函数，改进后的代码：
  1 #process the string to replace any dashes or colons found with a period and return the sanitized string
  2 def sanitize(time_string):
  3     time_string = time_string.strip()
  4     if '-' in time_string:
  5         splitter = '-'
  6     elif ':' in time_string:
  7         splitter = ':'
  8     else:
  9         return(time_string)
 10     (mins, secs) = time_string.split(splitter)
 11     return(mins + '.' + secs)
 12 
 13 #reads the data from the data files remains unchanged
 14 def get_coach_data(filename):
 15     try:
 16         with open(filename) as f:
 17             data = f.readline().strip().split(',')
 18             return({
 19                 'name':data.pop(0),
 20                 'birth':data.pop(0),
 21                 'times':str(sorted(set([sanitize(each_data) for each_data in data]))[0:3])
 22                 })
 23     except IOError as ioerr:
 24         print('file error:' + str(ioerr))
 25         return(None)
 26 
 27 #invoke the function get_coach_data()
 28 jams = get_coach_data('james.txt')
 29 miky = get_coach_data('miky.txt')
 30 
 31 #display the sorted list
 32 print(jams['name'] + "'s fastest time are:" + jams['times'])
 33 print(miky['name'] + "'s fastest time are:" + miky['times'])

面向对象：
When you define a class you are,in effect, defining a custom factory function you can then use in your code to create instance
定制工厂函数
class Athlete:
    def __init__(self, value=0):
         self.thing = value
    def how_big(self):
        return(len(self.thing))
其中的self是一个非常重要的参数，如果没有这个参数，Python解释器无法得出方法调用要应用到哪个对象实例。注意，
类代码设计为在所有对象实例间共享：方法是共享的，而属性不共享。self参数可以帮助标识要处理哪个对象实例的数据
d = Athlete('Jack Chou') ----> python executes:  Athlete.__init__(d, 'Jack Chou')
d.how_big()          ---->python executes: Athlete.how_big(d)   
self 就是调用对象实例 对象实例被赋给 self 参数

inherit:
inheriting from python's built-in list class
>>> class NamesList(list):   #这个类可以使用列表的所有功能
...     def __init__(self, a_name):
...         list.__init__([])
...         self.name = a_name
... 
>>> type(NamesList)
<class 'type'>
>>> jack = NamesList('Jack Chou')
>>> type(jack)
<class '__main__.NamesList'>
>>> dir(jack)     #use dir() to see what it provides
['__add__', '__class__', '__contains__', '__delattr__', '__delitem__', '__dict__', '__doc__', '__eq__', '__format__', '__ge__', '__getattribute__', '__getitem__', '__gt__', '__hash__', '__iadd__', '__imul__', '__init__', '__iter__', '__le__', '__len__', '__lt__', '__module__', '__mul__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__reversed__', '__rmul__', '__setattr__', '__setitem__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', 'append', 'count', 'extend', 'index', 'insert', 'name', 'pop', 'remove', 'reverse', 'sort']
>>> 
>>> jack.append('coder')
>>> jack.extend(['writer', 'engineer', 'actor'])
>>> jack    #这个继承了list后的对象实例表现得和list就没两样了
['coder', 'writer', 'engineer', 'actor']
>>> 

所以上面的代码可以改进成：

Design your web-app with MVC
Model: The code to store(and sometimes process) your webapp's data
View: The code to format and display your webapp's user interface
Controller:The code to glue your webapp together and provide its business logic

from string import Template #其中的 Template 可以做类似模板的替换
glob.glob('./*.txt')    #可以获取当前目录下的文件名
http.server   #可运行一个简单的web服务器
cgi.FieldStorage() #可以将表单传过来的数据一字典的形式保存
cgitb.enable()     #see CGI coding errors with your browser

json 数据格式
>>> import json
>>> names = ['Jack Chou', ['Mike', 'Jiaobuchong'], 'Zhoujie']
>>> to_transfer = json.dumps(names)    #弄成一个字符串的形式
>>> to_transfer
'["Jack Chou", ["Mike", "Jiaobuchong"], "Zhoujie"]'
>>> from_transfer = json.loads(to_transfer)   #转换为原来的列表的形式
>>> from_transfer
['Jack Chou', ['Mike', 'Jiaobuchong'], 'Zhoujie']
>>> names
['Jack Chou', ['Mike', 'Jiaobuchong'], 'Zhoujie']
>>> 

继承列表的一个类 athletelist.py ：
  1 class AthleteList(list):
  2     def __init__(self, a_name, a_dob=None, a_times=[]):
  3         list.__init__([])
  4         self.name = a_name
  5         self.dob = a_dob
  6         self.extend(a_times)
  7 
  8     @staticmethod
  9     def sanitize(time_string):
 10         if '-' in time_string:
 11             splitter = '-'
 12         elif ':' in time_string:
 13             splitter = ':'
 14         else:
 15             return(time_string)
 16         (mins, secs) = time_string.split(splitter)
 17         return(mins + '.' + secs)
 18 
 19 #使用了@property修饰符，在类  用户看来top3()方法就是一个属性，所以调用时只需 类实例.top3 即可
 20     @property 
 21     def top3(self):
 22         return(sorted(set([self.sanitize(t) for t in self]))[0:3])
 23 
 24     @property
 25     def clean_data(self):
 26         return(sorted(set([self.sanitize(t) for t in self])))
 27 
 28     @property
 29     def as_dict(self):
 30         return({'Name':self.name,
 31                'DOB':self.dob,
 32                'Top3':self.top3
 33               })
~                                                   
在交互模式下测试：
>>> from athletelist import AthleteList
>>> ath = AthleteList('jack', '2012-12-31', [2, 3, 4,5])                                                                               
>>> ath   #这个类的实例表现得更像一个列表(list)
[2, 3, 4, 5]
>>> ath.name   #但类的属性还是可以访问到的
'jack'
>>> ath.dob
'2012-12-31'
>>> type(ath)
<class 'athletelist.AthleteList'>


 11 web_server = 'http://172.18.130.16:8080'
 12 get_names_cgi = '/cgi-bin/generate_names.py'
 #这段代码是app中在请求服务器端的一个接口时，
 16 def send_to_server(url, post_data=None):
 17     if post_data:
 18         page = urlopen(url, urlencode(post_data))
 19     else:
 20         page = urlopen(url)
 21     return(page.read().decode('utf-8'))

#这段就是app中调用上面那个函数，并发送了数据
 22 athlete = json.loads(send_to_server(web_server + get_data_cgi, {'which_athlete':which_athlete}))

#服务器端接收处理
 23 form_data = cgi.FieldStorage()    #获得表单数据
 24 athlete_name = form_data['which_athlete'].value  #就可以得到app中用户点击的某个选项的取值

json library:
>>> import json
>>> j_change = json.dumps([1.22, 3.44, 5.55, [1.55, 9.10]])   #创建一个python类型的字符串版本
>>> j_change
'[1.22, 3.44, 5.55, [1.55, 9.1]]'
>>> type(j_change)
<class 'str'>
>>> j_from = json.loads(j_change)        #从json字符串到一个python类型
>>> j_from
[1.22, 3.44, 5.55, [1.55, 9.1]]
>>> type(j_from)
<class 'list'>

urllib
urllib2    库模块
可以用一个程序像web服务器发送编码的数据(urlopen(), urlencode())
sys 模块提供了sys.stdin, sys.stdout, sys.stderr输入流
  
os模块中，远程访问时，                                                                  
  9 addr = os.environ['REMOTE_ADDR']    
 10 host = os.environ['REMOTE_HOST']
 11 method = os.environ['REQUEST_METHOD']

数据库sqlite3:
>>>results = cursor.execute("""SELECT name FROM athletes""")
>>>print(results.fetchall())
#返回的数据是：
[('James Lee',), ('Sarah Sweeney',), ('Julie Jones',), ('Mikey McManus',)]

('James Lee', '2002-3-14')   #这是返回的results.fetchone()的数据

>>> res = input('what is your age: ')
what is your age: 21
>>> res
'21'
>>> int(res)
21


                                                                                                                                                    
