function demo18
% 条形图和阶梯形图的多维度展示
h0=figure('toolbar','none','position',[200 150 450 250],'name','实例18');
subplot(2,2,1)
x=-3:0.2:3;
y=exp(-x.*x);
% 直方图
bar(x,y)
title('2-D Bar Chart')
subplot(2,2,2)
x=-3:0.2:3;
y=exp(-x.*x);
% 3D直方图
bar3(x,y,'r')
title('3-D Bar Chart')
subplot(2,2,3)
x=-3:0.2:3;
y=exp(-x.*x);
% 绘制阶梯状图
stairs(x,y)
title('Stair Chart')
subplot(2,2,4)
x=-3:0.2:3;
y=exp(-x.*x);
% 垂直直方图
barh(x,y)
title('Horizontal Bar Chart')
saveas(h0,'18_条形图和阶梯形图的多维度展示.png')