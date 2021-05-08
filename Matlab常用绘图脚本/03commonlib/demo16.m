function demo16
% 劳伦兹非线形方程的无序活动
h0=figure('toolbar','none','position',[200 150 450 250],'name','实例16');
aviobj=VideoWriter('16_劳伦兹非线形方程的无序活动.avi');
open(aviobj);
axis equal
m=moviein(20,gcf);
set(gca,'nextplot','replacechildren') 
h=uicontrol('style','slider','position',[100 10 500 20],'min',1,'max',20) 
for j=1:2
    plot(fft(eye(j+16)))
    set(h,'value',j)
    m(:,j)=getframe(gcf);
    % 保存视频的方法     
    currFrame = getframe; 
    writeVideo(aviobj,currFrame);
    % 保存图片     
%     saveas(h,'16_劳伦兹非线形方程的无序活动.png')
end
clf;
close(aviobj);
axes('position',[0 0 1 1]);
movie(m,30)
