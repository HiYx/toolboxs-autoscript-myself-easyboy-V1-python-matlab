# import os, sys
# def MkDir():
    # path = './file/'#创建文件路径
    # i = 0
    # for i in range(200): #创建文件个数
        # file_name = path + str(i)
        # os.mkdir(file_name)
        # i=i+1
        # file_name_child = file_name + "/left_colorimages"  
        # os.mkdir(file_name_child)
# MkDir()

# import os, sys
# path1 = './dataset'  #指定名称文件夹所在路径
# path2 = './file/'    #新建文件夹所在路径
 
# def MkDir():
    # dirs = os.listdir(path1)
 
    # for dir in dirs:
        # file_name = path2 + str(dir)
        # os.mkdir(file_name)
 
# MkDir()


#目标是读取txt的每一行数据创建对应名字的文件夹
#1通过函数调用解决创建固定的文件夹
#2创建一个txt文件输出里面的内容输出
#3将txt输出内容和创建文件夹链接完成任务
#4后续补充检测文本文件是否存在，不在报错
#5后续补充如果已经有了文本中的文件夹跳过这个文件名创建下一个
#结束
#反思：目前创建的文件夹目录固定、文本文档位置固定
#完善功能：
#1.先把文件夹目录改为交互式用户设置
#2.检测txt文件是否存在
#!/usr/bin/python
#-*-coding:utf-8-*-
import os
path1 = "C:\\user\\yanyi\\OneDrive\\Github\\Hub\\按照时间创建文件\\try.txt"


import os
def mkdir(path):
  folder=os.path.exists(path)
  if not folder:
    os.makedirs(path)
    print(path+"---OK---")
  else:
    print(path+"---There is this folder!---")
 
if __name__=='__main__':
  file = "G:\\python\\NewFile\\folder\\"
  with open('./try.txt','r') as f:
    lines=f.readlines()
    for line in lines:
      folder=file+line
      #strip()方法移除字符串头尾指定的字符
      folder=folder.strip()
      #print (folder)
      mkdir(folder)