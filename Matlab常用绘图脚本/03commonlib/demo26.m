function demo26
% Öù×´Í¼
h0=figure('toolbar','none','position',[200 50 450 450],'name','ÊµÀı26');
subplot(2,1,1)
x = [5 2 1
    8 7 3
    9 8 6
    5 5 5
    4 3 2];
% Öù×´Í¼
bar(x);
xlabel('XÖá');
ylabel('YÖá');
title('µÚÒ»×ÓÍ¼');
subplot(2,1,2)
y = [5 2 1
    8 7 3
    9 8 6
    5 5 5
    4 3 2];
% Öù×´Í¼2
barh(y)
xlabel('XÖá');
ylabel('YÖá');
title('µÚ¶ş×ÓÍ¼');
saveas(h0,'26_Öù×´Í¼.png')