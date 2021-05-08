function demo22
% Ƭ״ͼ����ά��ʾTrimesh �� Trisurf
h0=figure('toolbar','none','position',[200 150 550 350],'name','ʵ��22');
subplot(1,2,1)
x=rand(1,20);
y=rand(1,20);
z=peaks(x,y*pi);
t=delaunay(x,y);
% �����θ���
trimesh(t,x,y,z)
hidden off
title('Figure1:Triangular Surface Plot');
subplot(1,2,2)
x=rand(1,20);
y=rand(1,20);
z=peaks(x,y*pi);
t=delaunay(x,y);
% ����ͼ
trisurf(t,x,y,z)
title('Figure1:Triangular Surface Plot'); 
saveas(h0,'22_Ƭ״ͼ.png')