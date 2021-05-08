function demo19
% 三维曲线图
h0=figure('toolbar','none','position',[200 150 450 400],'name','实例19');
subplot(2,1,1)
% 线性产生
x=linspace(0,2*pi);
y1=sin(x);
y2=cos(x);
y3=sin(x)+cos(x);
z1=zeros(size(x));
z2=0.5*z1;
z3=z1;
% 3D展示
plot3(x,y1,z1,x,y2,z2,x,y3,z3)
grid on
xlabel('X轴');
ylabel('Y轴');
zlabel('Z轴');
title('Figure1:3-D Plot')
subplot(2,1,2)
x=linspace(0,2*pi);
y1=sin(x);
y2=cos(x);
y3=sin(x)+cos(x);
z1=zeros(size(x));
z2=0.5*z1;
z3=z1;
plot3(x,z1,y1,x,z2,y2,x,z3,y3)
grid on
xlabel('X轴');
ylabel('Y轴');
zlabel('Z轴');
title('Figure2:3-D Plot')
saveas(h0,'19_三维曲线图.png')