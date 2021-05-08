function demo20
% 隐藏属性
h0=figure('toolbar','none','position',[200 150 450 300],'name','实例20');
subplot(1,2,1)
% 球曲面函数
[x,y,z]=sphere(10);
% 绘制三维曲面的函数
mesh(x,y,z)
axis off
title('Figure1:Opaque')
hidden on
subplot(1,2,2)
[x,y,z]=sphere(10);
mesh(x,y,z)
axis off
title('Figure2:Transparent')
% 取消隐藏线模式
hidden off
saveas(h0,'20_球曲面图（隐藏属性）.png')