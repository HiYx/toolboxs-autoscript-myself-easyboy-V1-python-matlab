#!/usr/bin/env python
import paramiko


path= 'C:/Users/yanyi/OneDrive/个人wiki/py_ssh/tmp/test.out'
hostname='119.28.3.215'
username='ubuntu'
password='Yi970112'
port=22

paramiko.util.log_to_file('syslogin.log')

ssh=paramiko.SSHClient()
ssh.load_system_host_keys()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect(hostname=hostname,username=username,port=port,password=password)
stdin,stdout,stderr=ssh.exec_command('ls /')
stdin,stdout,stderr=ssh.exec_command('cd /www/wwwroot/vpn.abiuni.com/Download/WechatRobot-master/;./runup.bash')

#print (stdout.read())

t = paramiko.Transport((hostname,port))
t.connect(username = username, password = password)
sftp = paramiko.SFTPClient.from_transport(t)
remotepath='/www/wwwroot/vpn.abiuni.com/Download/WechatRobot-master/test.out'
localpath=path
sftp.get(remotepath, localpath)

ssh.close()