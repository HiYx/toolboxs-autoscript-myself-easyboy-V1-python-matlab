function demo08
% �����Ա�ͼ����̬�����ע��Ч��
h0=figure('toolbar','none','position',[200 150 450 250],'name','ʵ��08');
x=91:95;
profits1=[88 75 84 93 77];
profits2=[51 64 54 56 68];
profits3=[42 54 34 25 24];
profits4=[26 38 18 15 4];
% ���ͼ
area(x,profits1,'facecolor',[0.5 0.9 0.6],'edgecolor','b','linewidth',3)
% ����һ��ͼ���ٻ���һ��ͼʱ��ԭ����ͼ���ڣ�����ͼ���档off�����ٻ�֮ǰ��ͼ����ʧ��
hold on
area(x,profits2,'facecolor',[0.9 0.85 0.7],'edgecolor','y','linewidth',3)
hold on
area(x,profits3,'facecolor',[0.3 0.6 0.7],'edgecolor','r','linewidth',3)
hold on
area(x,profits4,'facecolor',[0.6 0.5 0.9],'edgecolor','m','linewidth',3)
hold off
% ��������ʾ��Ч��
set(gca,'xtick',[91:95])
set(gca,'layer','top')
gtext('\leftarrow��һ��������')
gtext('\leftarrow�ڶ���������')
gtext('\leftarrow������������')
gtext('\leftarrow���ļ�������')
xlabel('��','fontsize',16);
ylabel('������','fontsize',16);
saveas(h0,'08_���ͼ.png')