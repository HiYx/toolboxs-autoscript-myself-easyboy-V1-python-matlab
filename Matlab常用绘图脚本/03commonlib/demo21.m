function demo21
% PEAKS函数曲线.
h0=figure('toolbar','none','position',[200 100 450 450],'name','实例21');
% peaks 函数是一个典型的多元函数。它本质上是一个二元高斯分布的概率密度函数
[x,y,z]=peaks(30);
subplot(2,1,1)
x=x(1,:);
y=y(:,1);
i=find(y>0.8&y<1.2);
j=find(x>-0.6&x<0.5);
z(i,j)=nan*z(i,j);
surfc(x,y,z)
xlabel('X轴');
ylabel('Y轴');
zlabel('Z轴');
title('Figure1:surfc函数形成的曲面')
subplot(2,1,2)
x=x(1,:);
y=y(:,1);
i=find(y>0.8&y<1.2);
j=find(x>-0.6&x<0.5);
z(i,j)=nan*z(i,j);
surfl(x,y,z)
xlabel('X轴');
ylabel('Y轴');
zlabel('Z轴');
title('Figure2:surfl函数形成的曲面')
saveas(h0,'21_PEAKS函数曲线.png')