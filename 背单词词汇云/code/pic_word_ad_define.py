from PIL import Image, ImageDraw, ImageFont
import time
import shutil
def pic_word_ad_define( header = '001',title = '日思',writes = ['日思录第001篇', 'python给图片加文字'],line=5,row=10):
  # 图片名称
  img = './girl.png'  # 图片模板
  cur_day = time.strftime("%Y-%m-%d", time.localtime()) + '.png'
  src= './'+cur_day
  dst= '../'+cur_day
  
  
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

  # header
  header_x = 10
  header_y = 1100
  draw.text((header_x, height - header_y), u'%s' % header, color, header_font)

  # title
  title_x = header_x
  title_y = header_y - 80
  draw.text((title_x, height - title_y), u'%s' % title, color, title_font)

  # 当前时间
  cur_time = time.strftime("%Y-%m-%d %H:%M:%S", time.localtime())

  cur_time_x = 590
  cur_time_y = header_y - 25
  cur_time_font = ImageFont.truetype(font_type, 25)
  draw.text((cur_time_x, height - cur_time_y), u'%s' % cur_time, color, cur_time_font)

  # writes
  write_x = 10
  write_y = 950
  write_line = 50
  n=0
  
  for each  in range(line):
      for num in range(row):
          y = write_y - num * write_line
          draw.text((write_x, height - y), u'%s. %s' % (n, writes[n]), color, font)
          n=n+1
      write_x = write_x+300

  # 生成图片
  image.save(cur_day,'png')
  shutil.move( src, dst)
  return 