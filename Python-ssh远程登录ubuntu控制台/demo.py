#!/usr/bin/python
#coding:utf-8
import paramiko
port =22
ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect("*.*.*.*",port,"username", "password")
stdin, stdout, stderr = ssh.exec_command("你的命令")
print stdout.readlines()ssh.close()

二、上传文件到远程
#!/usr/bin/python#coding:utf-8
import paramiko
port =22
t = paramiko.Transport(("IP",port))
t.connect(username = "username", password = "password")
sftp = paramiko.SFTPClient.from_transport(t)
remotepath='/tmp/test.txt'
localpath='/tmp/test.txt'
sftp.put(localpath,remotepath)
t.close()


三、从远程下载文件
#!/usr/bin/python#coding:utf-8
import paramiko
port =22
t = paramiko.Transport(("IP",port))
t.connect(username = "username", password = "password")
sftp = paramiko.SFTPClient.from_transport(t)
remotepath='/tmp/test.txt'
localpath='/tmp/test.txt'
sftp.get(remotepath, localpath)
t.close()

四、执行多个命令
#!/usr/bin/python
#coding:utf-8

import sys
sys.stderr = open('/dev/null')  

# Silence silly warnings 
from paramiko import paramiko as pm
sys.stderr = sys.__stderr__
import os


class AllowAllKeys(pm.MissingHostKeyPolicy):

	def missing_host_key(self, client, hostname, key):
		return

HOST = '127.0.0.1'
USER = ''
PASSWORD = ''

client = pm.SSHClient()
client.load_system_host_keys()
client.load_host_keys(os.path.expanduser('~/.ssh/known_hosts'))
client.set_missing_host_key_policy(AllowAllKeys())
client.connect(HOST, username=USER, password=PASSWORD)
channel = client.invoke_shell()
stdin = channel.makefile('wb')
stdout = channel.makefile('rb')
stdin.write('''cd tmplsexit''')
print stdout.read()
stdout.close()
stdin.close()
client.close()

五、获取多个文件
#!/usr/bin/python
#coding:utf-8
import paramiko
import os
ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect('localhost',username='****')  

apath = '/var/log'apattern = '"*.log"'
rawcommand = 'find {path} -name {pattern}'
command = rawcommand.format(path=apath, pattern=apattern)
stdin, stdout, stderr = ssh.exec_command(command)
filelist = stdout.read().splitlines()
ftp = ssh.open_sftp()

for afile in filelist:
	(head, filename) = os.path.split(afile)
	print(filename)    
	ftp.get(afile, './'+filename)

ftp.close()
ssh.close()


