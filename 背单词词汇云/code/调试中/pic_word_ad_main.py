from PIL import Image, ImageDraw, ImageFont
import time
from wordcloud import WordCloud, STOPWORDS, ImageColorGenerator  # 词云库
import matplotlib.pyplot as plt  # 数学绘图库
import numpy as np
import re
import pic_word_ad_define
import random
import sys

def find_chinese(file):
    pattern = re.compile(r'[^\u4e00-\u9fa5]')
    chinese = re.sub(pattern, '', file)
    #print(chinese)
    return chinese
 
def find_unchinese(file):
    pattern = re.compile(r'[\u4e00-\u9fa5]')
    unchinese = re.sub(pattern,"",file)
    #print(unchinese)
    return unchinese

def ReadTxtName(rootdir):
    lines = []
    with open(rootdir, 'r',encoding='UTF-8') as file_to_read:
        while True:
            line = file_to_read.readline()
            if not line:
                break
            line = line.strip('\n')
            lines.append(find_unchinese(line))
    return lines

    
def en_wordcloudGenerater(lineslist):
    # 使用上下文管理器with读取本地文本文件
        random.shuffle(lineslist)
        #.replace('\n', '') 
        pic_word_ad_define.pic_word_ad_define( header = 'No.1',title = 'Every Day 108 AND at 20 minutes, 30 minutes, 1 hour, 2 hours, evening Review',writes = lineslist)


if __name__ == '__main__':
    # 本地文本文件路径
    
    filePath ='C:\\Users\\yanyi\\Desktop\\content.txt'
    lineslist=ReadTxtName(filePath)
    en_wordcloudGenerater(lineslist)