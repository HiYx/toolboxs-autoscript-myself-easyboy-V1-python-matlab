#GovRptWordCloudv2.py
import jieba
import wordcloud
from scipy.misc import imread

#filename = 'partyone.txt'
mask = imread("1.jpg")
excludes = { }
f = open("chuci.txt", "r", encoding="utf-8")
t = f.read()
f.close()
ls = jieba.lcut(t)
txt = " ".join(ls)
w = wordcloud.WordCloud(\
    width = 1000, height = 700,\
    background_color = "white",
    font_path = "msyh.ttc", mask = mask
    )
w.generate(txt)


#with open(file_name,'a') as file_object:
#    file_object.write('love\n')
w.to_file("grwordcloudm1.png")
