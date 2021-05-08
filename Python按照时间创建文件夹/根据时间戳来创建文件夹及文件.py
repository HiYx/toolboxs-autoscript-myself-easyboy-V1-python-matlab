
import os
import datetime
 
# 年-月-日 时:分:秒
nowTime=datetime.datetime.now().strftime('%Y-%m-%d %H:%M:%S')
# 年-月-日
dayTime = datetime.datetime.now().strftime('%Y-%m-%d')
# 时:分:秒
hourTime = datetime.datetime.now().strftime('%H:%M:%S')
print(nowTime + '\n' + dayTime + '\n' + hourTime)
 
mobile = 176
pwd = os.getcwd() + '\\' + dayTime + '\\' + str(mobile)
# print(pwd)
# 判断文件夹是否已存在
isExists = os.path.exists(pwd)
if not isExists:
    os.makedirs(pwd)
