function demo23
% 视角的调整效果图
h0=figure('toolbar','none','position',[200 150 450 350],'name','实例23');
x=-5:0.5:5;
[x,y]=meshgrid(x);
r=sqrt(x.^2+y.^2)+eps;
z=sin(r)./r;
subplot(2,2,1)
surf(x,y,z)
xlabel('X-axis')
ylabel('Y-axis')
zlabel('Z-axis')
title('Figure1')
% 定义视角1
view(-37.5,30)
subplot(2,2,2)
surf(x,y,z)
xlabel('X-axis')
ylabel('Y-axis')
zlabel('Z-axis')
title('Figure2')
% 定义视角2
view(-37.5+90,30)
subplot(2,2,3)
surf(x,y,z)
xlabel('X-axis')
ylabel('Y-axis')
zlabel('Z-axis')
title('Figure3')
% 定义视角3
view(-37.5,60)
subplot(2,2,4)
surf(x,y,z)
xlabel('X-axis')
ylabel('Y-axis')
zlabel('Z-axis')
title('Figure4')
% 定义视角4
view(180,0)
saveas(h0,'23_视角的调整效果图.png')