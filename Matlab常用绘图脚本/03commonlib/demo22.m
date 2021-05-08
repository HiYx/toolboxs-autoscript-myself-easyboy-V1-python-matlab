function demo22
% 片状图。三维显示Trimesh 和 Trisurf
h0=figure('toolbar','none','position',[200 150 550 350],'name','实例22');
subplot(1,2,1)
x=rand(1,20);
y=rand(1,20);
z=peaks(x,y*pi);
t=delaunay(x,y);
% 三角形格网
trimesh(t,x,y,z)
hidden off
title('Figure1:Triangular Surface Plot');
subplot(1,2,2)
x=rand(1,20);
y=rand(1,20);
z=peaks(x,y*pi);
t=delaunay(x,y);
% 表面图
trisurf(t,x,y,z)
title('Figure1:Triangular Surface Plot'); 
saveas(h0,'22_片状图.png')