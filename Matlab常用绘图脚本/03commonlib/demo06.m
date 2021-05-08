function demo06
% 在图像中做标记，如find最大最小值用箭头标记
h0=figure('toolbar','none','position',[200 150 450 400],'name','实例06');
t=0:pi/100:2*pi;
h=plot(t,sin(t));
xlabel('t=0到2\pi','fontsize',16);
ylabel('sin(t)','fontsize',16);
title('\it{从0to2\pi 的正弦曲线}','fontsize',16) 
% F1查看获取图像的各项指标，如x轴的值
x=get(h,'xdata');
y=get(h,'ydata');
% 输入矩阵的行向量，则返回非0的行向量位置；列向量y,则返回所有列向量y的位置
imin=find(min(y)==y);
imax=find(max(y)==y);
% 用左箭头做了标记
text(x(imin),y(imin),['\leftarrow最小值=',num2str(y(imin))],'fontsize',16)
text(x(imax),y(imax),['\leftarrow最大值=',num2str(y(imax))],'fontsize',16)
saveas(h,'06_标记最值.png')