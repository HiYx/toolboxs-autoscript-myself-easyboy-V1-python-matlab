function demo05
%多张图显示一起显示
h0=figure('toolbar','none','position',[200 150 450 250],'name','实例05');
t=0:pi/10:2*pi;
[x,y]=meshgrid(t);
% 用来占位子
subplot(2,2,1)
% 曲线1
plot(sin(t),cos(t))
axis equal
subplot(2,2,2)
z=sin(x)-cos(y);
% 曲线2
plot(t,z)
axis([0 2*pi -2 2])
subplot(2,2,3)
h=sin(x)+cos(y);
% 曲线3
plot(t,h)
axis([0 2*pi -2 2])
subplot(2,2,4)
g=(sin(x).^2)-(cos(y).^2);
% 曲线4
plot(t,g)
axis([0 2*pi -1 1])
saveas(h0,'05_多图合一.png')