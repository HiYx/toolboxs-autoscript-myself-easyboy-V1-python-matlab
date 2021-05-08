import os, re, sys
from nltk.corpus import wordnet  # 过滤非英文单词，需要下载
from collections import Counter
c = Counter()

def extract_eng(text):
    global c
    eng_ls = re.findall('[a-zA-Z]{5,}', text)
    c += Counter([eng.lower() for eng in eng_ls if wordnet.synsets(eng)])

def traversal(path):
    for file_name in os.listdir(path):
        extract_eng(file_name)  # 收集文件名中的单词
        abs_path = os.path.join(path, file_name)
        if os.path.isdir(abs_path):
            traversal(abs_path)
        elif os.path.isfile(abs_path):
            print(abs_path)
            with open(abs_path, encoding='utf-8') as f:
                try:
                    text = f.read()
                    extract_eng(text)  # 收集文件中的单词
                except UnicodeDecodeError as e:
                    print('\033[031m', e, '\033[0m')

def shortest(ls=sys.path):
    min_path = '_' * 99
    for path in ls:
        if len(path) < len(min_path):
            min_path = path
    return min_path

def main():
    from time import time
    import pandas as pd
    t = time()
    root = shortest()  # Python安装目录
    traversal(root)
    most = c.most_common(30000)  # 保存3万个词
    pd.DataFrame(most).to_excel('words.xlsx', columns=['word', 'frequency'], index=False)
    print(time() - t)

if __name__ == '__main__':
    main()
