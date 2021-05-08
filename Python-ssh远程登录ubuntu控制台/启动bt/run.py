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
stdin,stdout,stderr=ssh.exec_command('sudo service bt restart')
print (stdout.read())


ssh.close()