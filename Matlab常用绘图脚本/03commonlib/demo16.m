function demo16
% �����ȷ����η��̵�����
h0=figure('toolbar','none','position',[200 150 450 250],'name','ʵ��16');
aviobj=VideoWriter('16_�����ȷ����η��̵�����.avi');
open(aviobj);
axis equal
m=moviein(20,gcf);
set(gca,'nextplot','replacechildren') 
h=uicontrol('style','slider','position',[100 10 500 20],'min',1,'max',20) 
for j=1:2
    plot(fft(eye(j+16)))
    set(h,'value',j)
    m(:,j)=getframe(gcf);
    % ������Ƶ�ķ���     
    currFrame = getframe; 
    writeVideo(aviobj,currFrame);
    % ����ͼƬ     
%     saveas(h,'16_�����ȷ����η��̵�����.png')
end
clf;
close(aviobj);
axes('position',[0 0 1 1]);
movie(m,30)
