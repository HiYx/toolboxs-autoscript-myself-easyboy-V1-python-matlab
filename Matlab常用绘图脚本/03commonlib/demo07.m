function demo07
% ����ͼ��ֱ��ͼһ����ʾ
h0=figure('toolbar','none','position',[200 150 450 350],'name','ʵ��07');
tiao1=[562 548 224 545 41 445 745 512];
tiao2=[47 48 57 58 54 52 65 48];
t=0:7;
% bar����ֱ��ͼ
bar(t,tiao1)
xlabel('X��');
ylabel('Yֵ');
% gca���ص�ǰaxes����ľ��ֵ
h1=gca;
h2=axes('position',get(h1,'position'));
plot(t,tiao2,'linewidth',1)
% ���þ��Ϊh2��ͼ�ζ���ָ������
set(h2,'yaxislocation','right','color','none','xticklabel',[]) 
saveas(h0,'07_����ֱ�����ͼ.png')