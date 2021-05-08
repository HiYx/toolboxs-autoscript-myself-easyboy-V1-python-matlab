def readData(file_path):
    # 打开一个文本文件
    text_file = open(file_path)
    data_item = []
    # x轴垂轨数据
    x_ev = []
    # x轴沿轨数据
    x_eh = []
    # y轴垂轨数据
    y_ev = []
    # y轴沿轨数据
    y_eh = []

    # 先读取第一行，读取时注意去掉行尾的换行符
    line = text_file.readline().strip('\n')
    # 然后逐行读取数据
    while line:
        line = text_file.readline().strip('\n')
        # 如果读取的行内容不为空，则添加到list中
        # 注意这里并不能用None，注意空字符串和空对象的区别
        if line != '':
            data_item.append(line)

    # 读取完成后对于读取的每行数据进行简单的提取和处理
    for i in range(data_item.__len__()):
        data = data_item[i].split('\t')
        x_coordinate = float(data[1])
        y_coordinate = float(data[2])
        error_vertical = float(data[5])
        error_horizontal = float(data[6])
        x_ev.append([x_coordinate, error_vertical])
        x_eh.append([x_coordinate, error_horizontal])
        y_ev.append([y_coordinate, error_vertical])
        y_eh.append([y_coordinate, error_horizontal])

    # 由于原始数据中坐标并没有进行排序，因此这里进行排序
    x_ev.sort()
    x_eh.sort()
    y_eh.sort()
    y_ev.sort()
    return x_ev, x_eh, y_ev, y_eh