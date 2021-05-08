function demo12
% 罗盘图的画法
h0=figure('toolbar','none','position',[200 150 450 250],'name','实例12');
winddirection=[54 24 65 84
               256 12 235 62
               125 324 34 254];
windpower=[2 5 5 3
           6 8 12 7
           6 14 10 8];
rdirection=winddirection*pi/180;
% 把极坐标或圆柱坐标转换为直角坐标
[x,y]=pol2cart(rdirection,windpower); compass(x,y);
desc={'风向和风力',
        '北京气象台',
        '4月27日10:00到',
        '4月27日20:00'};
gtext(desc)

saveas(h0,'12_罗盘图.png')