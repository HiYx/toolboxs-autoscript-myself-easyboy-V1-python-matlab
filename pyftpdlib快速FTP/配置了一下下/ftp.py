# -*- coding: utf-8 -*-
# @Author   : 王翔
# @JianShu  : 清风Python
# @Date     : 2019/8/30 1:26
# @Software : PyCharm
# @version  ：Python 3.7.3
# @File     : PythonFtp.py


from pyftpdlib.handlers import FTPHandler
from pyftpdlib.servers import FTPServer
from pyftpdlib.authorizers import DummyAuthorizer

authorizer = DummyAuthorizer()
# Define a new user having full r/w permissions and a read-only
authorizer.add_user('python', '123456', 'D:\\temptemp', perm='elradfmwM')
handler = FTPHandler
handler.authorizer = authorizer

server = FTPServer(('0.0.0.0',21), handler)
server.serve_forever()