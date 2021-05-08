function demo17
% 自定义填充图
h0=figure('toolbar','none','position',[200 150 450 250],'name','实例17');
t=(1:2:15)*pi/8;
x=sin(t);
y=cos(t);
% 填充图
fill(x,y,'r')
axis square off
text(0,0,'STOP','color',[1 1 1],'fontsize',50,'horizontalalignment','center')

saveas(h0,'17_自定义STOP填充图.png')