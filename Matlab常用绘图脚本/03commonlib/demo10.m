function demo10
% ½×ÌÝÍ¼
h0=figure('toolbar','none','position',[200 150 450 400],'name','ÊµÀý10');
a=0.01;
b=0.5;
t=0:10;
f=exp(-a*t).*sin(b*t);
% »æÖÆ½×ÌÝ×´Í¼
stairs(t,f)
hold on
plot(t,f,':*')
hold off
glabel='º¯Êýe^{-(\alpha*t)}sin\beta*tµÄ½×ÌÝÍ¼'; gtext(glabel,'fontsize',16)
xlabel('t=0:10','fontsize',16)
% axis([0 10 -1.2 1.2]) ±íÃ÷Í¼ÏßµÄxÖá·¶Î§Îª0~10 yÖá·¶Î§Îª-1.2~1.2
axis([0 10 -1.2 1.2])
saveas(h0,'10_½×ÌÝÍ¼.png')