function demo06
% ��ͼ��������ǣ���find�����Сֵ�ü�ͷ���
h0=figure('toolbar','none','position',[200 150 450 400],'name','ʵ��06');
t=0:pi/100:2*pi;
h=plot(t,sin(t));
xlabel('t=0��2\pi','fontsize',16);
ylabel('sin(t)','fontsize',16);
title('\it{��0to2\pi ����������}','fontsize',16) 
% F1�鿴��ȡͼ��ĸ���ָ�꣬��x���ֵ
x=get(h,'xdata');
y=get(h,'ydata');
% �����������������򷵻ط�0��������λ�ã�������y,�򷵻�����������y��λ��
imin=find(min(y)==y);
imax=find(max(y)==y);
% �����ͷ���˱��
text(x(imin),y(imin),['\leftarrow��Сֵ=',num2str(y(imin))],'fontsize',16)
text(x(imax),y(imax),['\leftarrow���ֵ=',num2str(y(imax))],'fontsize',16)
saveas(h,'06_�����ֵ.png')