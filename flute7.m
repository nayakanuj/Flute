function []=flute7()
load('flute_base.mat');
N=50000;
step=(log10(100000)-log10(N))/12;
sa=N;
re=10^(log10(N)+2*step);rebar=10^(log10(N)+step);
ga=10^(log10(N)+4*step);gabar=10^(log10(N)+3*step);
ma=10^(log10(N)+5*step);mabar=10^(log10(N)+6*step);
pa=10^(log10(N)+7*step);
dha=10^(log10(N)+9*step);dhabar=10^(log10(N)+8*step);
ni=10^(log10(N)+11*step);nibar=10^(log10(N)+10*step);
sabar=10^(log10(N)+12*step);
yre=[y fliplr(y(N-ceil((re/sa-1)*N):N))];yrebar=[y fliplr(y(N-ceil((rebar/sa-1)*N):N))];
yga=[y fliplr(y(N-ceil((ga/sa-1)*N):N))];ygabar=[y fliplr(y(N-ceil((gabar/sa-1)*N):N))];
yma=[y fliplr(y(N-ceil((ma/sa-1)*N):N))];ymabar=[y fliplr(y(N-ceil((mabar/sa-1)*N):N))];
ypa=[y fliplr(y(N-ceil((pa/sa-1)*N):N))];
ydha=[y fliplr(y(N-ceil((dha/sa-1)*N):N))];ydhabar=[y fliplr(y(N-ceil((dhabar/sa-1)*N):N))];
yni=[y fliplr(y(N-ceil((ni/sa-1)*N):N))];ynibar=[y fliplr(y(N-ceil((nibar/sa-1)*N):N))];
ysabar=[y fliplr(y(N-ceil((sabar/sa-1)*N)+1:N))];ysa=y;

save('notes.mat','ysa','yrebar','yre','ygabar','yga','yma','ymabar','ypa','ydhabar','ydha','ynibar','yni','ysabar','sa','rebar','re','gabar','ga','ma','mabar','pa','dhabar','dha','nibar','ni','sabar');



        