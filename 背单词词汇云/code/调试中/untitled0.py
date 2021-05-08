# -*- coding: utf-8 -*-
"""
Created on Thu Mar  5 16:07:09 2020

@author: yanyi
"""

def ReadTxtName(rootdir):
    lines = []
    with open(rootdir, 'r',encoding='UTF-8') as file_to_read:
        while True:
            line = file_to_read.readline()
            if not line:
                break
            line = line.strip('\n')
            lines.append(line)
    return lines
resultpath='C:\\Users\\yanyi\\Desktop\\test.txt'
lineslist=ReadTxtName(resultpath)
