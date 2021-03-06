from PIL import Image, ImageDraw, ImageFont
import time
from wordcloud import WordCloud, STOPWORDS, ImageColorGenerator  # 词云库
import matplotlib.pyplot as plt  # 数学绘图库
import numpy as np
import re
import pic_word_ad_define
import random
import sys


 
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
        random.shuffle(lineslist)
        pic_word_ad_define.pic_word_ad_define( header = header,title = title,writes = lineslist,line=line,row=row)

if __name__ == '__main__':
    filePath ='../content.txt'
    header = 'No.10'
    title = 'Daily 57 words, Review at 20- 0 minutes, 1-2 hours, evening Review'
    line=5
    row=7
    lineslist=ReadTxtName(filePath)
    en_wordcloudGenerater(lineslist)