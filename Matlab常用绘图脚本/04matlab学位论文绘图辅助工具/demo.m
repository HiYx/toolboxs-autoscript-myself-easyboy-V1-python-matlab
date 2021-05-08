%%
% matlabѧλ���Ļ�ͼ��������demo
% ���ߣ�ztinpn
% ��Ŀ��ַ��https://github.com/ztinpn/utilForFormat
% ���ص�ַ��https://github.com/ztinpn/utilForFormat/archive/master.zip

%% ����ǰ��Ҫ��֤copy options��ѡ��
% preserve information
% transparent background
% match figure screen size

clear variables;
% clear classes;
close all;

%% ���ɹ�������� �������У�����֮�����ظ�ִ�С�
utilForFormat = UtilForFormat('off');
% on: ��ʹ��ͳ�ƹ��ܣ���ҿ�����http://new.cnzz.com/v1/login.php?siteid=1254502417��ÿͷ���->����\��Ӫ�̣�
% �鿴�����ߵ�ȫ���û�ʹ�����
% off: �ر�ʹ��ͳ�ƹ���

%% Ĭ���������
% Ĭ��������'����', '10pt', 'bold'
% ��ͨ�� utilForFormat.setDefaultFont('����', 10, 'bold');�����޸�

%%
close all;
t = 0:0.05:1;
numOfLines = 8;
strCell = cell(1,numOfLines);

%% �Զ���ʽ
% (1) ��ɫ����ǣ�����˳��

% 'cml': ��color���� marker��� line��˳������������ʽ
labelsForPlotLine = utilForFormat.labelsForPlotLineGnrt('cml');

figure;
hold on;
grid on;
for ia = 1:numOfLines
    plot(t, ia + sin(2 * pi * t), labelsForPlotLine{1,ia});
    strCell{1,ia} = sprintf('����%d',ia);
end
legend(strCell);
utilForFormat.setLineWidth(1.5); % �����߿�
utilForFormat.dissertationPlot(...
    '��ʽ���ȼ�����ɫ>���>����',... % �����ַ���
    'x��',...
    'y��',...
    7.5 ...   % �̶���ȣ���λcm
    );
% (2) ��ʽ���ȼ������>��ɫ>����
labelsForPlotLine = utilForFormat.labelsForPlotLineGnrt('mcl');

figure;
hold on;
grid on;
for ia = 1:numOfLines
    plot(t, ia + sin(2 * pi * t), labelsForPlotLine{1,ia});
    strCell{1,ia} = sprintf('����%d',ia);
end
legend(strCell);
utilForFormat.setLineWidth(1.5);
utilForFormat.dissertationPlot('��ʽ���ȼ������>��ɫ>����','x��','y��',7.5);
%% ��άͼ
% ������Ӧ�߶�
xVec = 1:100;
yVec = 1:150;
figure;
imagesc(xVec,yVec,rand(length(yVec),length(xVec)));
axis equal;
xlim([min(xVec),max(xVec)]);
ylim([min(yVec),max(yVec)]);
utilForFormat.colorbarPlot('ֵ[��λ]');
utilForFormat.dissertationPlotNoAdjust(sprintf('10cm��������Ӧ\nȱ�㣺����հ� '),'x��','y��',10);
% ����Ӧ�߶�
figure;
imagesc(xVec,yVec,rand(length(yVec),length(xVec)));
axis equal;
xlim([min(xVec),max(xVec)]);
ylim([min(yVec),max(yVec)]);
utilForFormat.colorbarPlot('ֵ[��λ]');
utilForFormat.dissertationPlot('10cm������Ӧ','x��','y��',10);