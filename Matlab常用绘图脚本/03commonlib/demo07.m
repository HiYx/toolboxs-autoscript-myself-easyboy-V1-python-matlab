function demo07
% 折线图和直方图一起显示
h0=figure('toolbar','none','position',[200 150 450 350],'name','实例07');
tiao1=[562 548 224 545 41 445 745 512];
tiao2=[47 48 57 58 54 52 65 48];
t=0:7;
% bar绘制直方图
bar(t,tiao1)
xlabel('X轴');
ylabel('Y值');
% gca返回当前axes对象的句柄值
h1=gca;
h2=axes('position',get(h1,'position'));
plot(t,tiao2,'linewidth',1)
% 设置句柄为h2的图形对象指定属性
set(h2,'yaxislocation','right','color','none','xticklabel',[]) 
saveas(h0,'07_折线直方混合图.png')