import re 
# ecoding=utf-8
ifn = r"train.txt"
ofn = r"train_output.txt"

infile = open(ifn,'r')
outfile = open(ofn,'w') # 在使用write()函数的时候，如果文件打开模式带 b，那写入文件内容时，str (参数)要用 encode 方法转为 bytes 形式，否则报错。

for eachline in infile.readlines():
    #去掉文本行里面的空格、\t、数字（其他有要去除的也可以放到' \t1234567890'里面）
    #lines = filter(lambda ch: ch not in ' \t1234567890', eachline) 
    lines = filter(lambda ch: ch not in u'1234567890\u4e00-\u9fa5', eachline) 
    t1=list(lines)
    t2="".join(t1)
    # 在前面加”ur“，u的意思是表明后面有Unicode字符，汉字的范围为”\u4e00-\u9fa5“，这个是用Unicode表示的，所以前面必须要加”u“；字符”r“的意思是表示忽略后面的转义字符，这样简化了后面正则表达式里每遇到一个转义字符还得挨个转义的麻烦
    rule = re.compile(u"[^a-zA-Z0-9]")
    lines = rule.sub('',eachline)

    outfile.write(t2) # 写入train_output.txt(此处是一股脑的全写进去，并没有做任何的分行处理)

infile.close()
outfile.close()