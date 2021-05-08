from PIL import Image, ImageDraw, ImageFont
import time

def pic_word_ad_define( header = '001',title = '日思录第001篇' ,books = ['中国史纲五十讲', '再见拖延症', '心流'],writes = ['日思录第001篇', 'python给图片加文字'],summary = '习惯在一个任务开始之前'):

  n = 55
  summary_list = [summary[i:i + n] for i in range(0, len(summary), n)]


  # 图片名称
  img = './girl.png'  # 图片模板
  new_img = 'text.png'  # 生成的图片
  compress_img = 'compress.png'  # 压缩后的图片

  # 设置字体样式
  font_type = 'C:/Windows/Fonts/Tahoma.ttf'
  font_medium_type = 'C:/Windows/Fonts/Tahoma.ttf'
  header_font = ImageFont.truetype(font_medium_type, 55)
  title_font = ImageFont.truetype(font_medium_type, 45)
  font = ImageFont.truetype(font_type, 34)
  color = "#000000"

  # 打开图片
  image = Image.open(img)
  draw = ImageDraw.Draw(image)
  width, height = image.size

  # header头
  header_x = 10
  header_y = 1100
  draw.text((header_x, height - header_y), u'%s' % header, color, header_font)

  # 标题
  title_x = header_x
  title_y = header_y - 80
  draw.text((title_x, height - title_y), u'%s' % title, color, title_font)

  # 当前时间
  cur_time = time.strftime("%Y-%m-%d %H:%M:%S", time.localtime())
  cur_time_x = 590
  cur_time_y = header_y - 25
  cur_time_font = ImageFont.truetype(font_type, 25)
  draw.text((cur_time_x, height - cur_time_y), u'%s' % cur_time, color, cur_time_font)

  # 阅读
  book_x = title_x + 5
  book_start_y = title_y - 190
  book_y = 0
  book_line = 50
  # for num, book in enumerate(books):
      # y = book_start_y - num * book_line
      # book_num = num + 1
      # draw.text((book_x, height - y), u'%s. %s' % (book_num, book), color, font)

  # 写作
  write_x = 10
  write_y = 950
  write_line = 50
  n=0
  list = ['woodman', 'Alan', 'Bobo','Bobo', 'Bobo','Bobo', 'Bobo','Bobo']
  list = writes
#  for each ,write in enumerate(writes):
  for each  in range(6):
      for num in range(18):
          y = write_y - num * write_line
          draw.text((write_x, height - y), u'%s. %s' % (n, writes[n]), color, font)
          n=n+1
      write_x = write_x+300

      
      

  # 哲思
#  summary_x = 30
#  summary_y = 450
#  summary_line = 60
#  for num, summary in enumerate(summary_list):
#      y = summary_y - num * summary_line
#      draw.text((summary_x, height - y), u'%s' % summary, color, font)

  # 生成图片
  image.save(new_img, 'png')

  # 压缩图片
  # sImg = Image.open(new_img)
  # w, h = sImg.size
  # width = int(w / 2)
  # height = int(h / 2)
  # dImg = sImg.resize((width, height), Image.ANTIALIAS)
  # dImg.save(compress_img)
  return 