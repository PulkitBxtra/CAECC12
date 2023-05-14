% To generate a M/M/1 Queue having infinite buffer space with parameters (,) and 
% plot the average delay per packet vs /.

clear all; 
close all 
clc;
n=100000;
x=rand(1,n);
ex=(log(1-x)); count=hist(ex,20); lamda=count/(5*n); 
x=rand(1,n); 
ex=(log(1- x)); 
count=hist(ex,20); 
mu=count/(n);
ltrue=max(lamda); 
mutrue=max(mu);
rhotrue=ltrue/mutrue;
xaxis=linspace(0,rhotrue,length(lamda));
plot(xaxis,lamda,'-d','Linewidth',1.2);hold on;
plot(xaxis,mu,'-d','Linewidth',1.2);
Wt(1) = lamda(1) + mu(1); 
for i=2:length(lamda)
 if Wt(i-1) > lamda(i)
 ewt=Wt(i-1) - lamda(i); Wt(i) = ewt + mu(i); 
elseif Wt(i-1) <= lamda(i)
 Wt(i) = mu(i);
 end
end
plot(xaxis,Wt,'-h','Linewidth',1.2) 
grid on; 
hold off;
legend('\lambda','\mu','Waiting time','location','NW'); 
title('\lambda \mu & Wt','fontsize',16)
xlabel('\rho = \lambda / \mu -->>','Fontsize',14,'fontweight','b')