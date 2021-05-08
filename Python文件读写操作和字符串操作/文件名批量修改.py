'''

功能：文件名批量修改
作者：PengSky
时间：2019年2月18日19点31分
要点：os.listdir 函数：列出路径下所有文件名称，返回名称列表
      os.rename 函数：文件重命名

'''

import os
filenames = os.listdir() # 获取当前路径下所有文件名称
for filename in filenames:
    if filename[-3:] == 'bmp': # 筛选出bmp格式文件
        # print(filename)
        newname = filename.split('_')[-1]
        os.rename(filename, newname) # 重命名文件
        print('%s 成功修改为 %s' % (filename, newname))
