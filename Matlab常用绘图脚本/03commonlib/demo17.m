function demo17
% �Զ������ͼ
h0=figure('toolbar','none','position',[200 150 450 250],'name','ʵ��17');
t=(1:2:15)*pi/8;
x=sin(t);
y=cos(t);
% ���ͼ
fill(x,y,'r')
axis square off
text(0,0,'STOP','color',[1 1 1],'fontsize',50,'horizontalalignment','center')

saveas(h0,'17_�Զ���STOP���ͼ.png')