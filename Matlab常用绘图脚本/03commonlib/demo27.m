function demo27
% 设置照明方式
h0=figure('toolbar','none','position',[200 150 450 350],'name','实例27');
subplot(2,2,1)
sphere
shading flat
camlight left
camlight right
lighting flat
colorbar
axis off
title('Figure1')
subplot(2,2,2)
sphere
shading flat
camlight left
camlight right
lighting gouraud
colorbar
axis off
title('Figure2')
subplot(2,2,3)
% 球曲面图
sphere
shading interp
camlight right
camlight left
lighting phong
% 色度条
colorbar
axis off
title('Figure3')
subplot(2,2,4)
sphere
shading flat
camlight left
camlight right
lighting none
colorbar
axis off
title('Figure4')
saveas(h0,'27_设置照明方式.png')