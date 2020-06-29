%% Plot Different Amplitude Weights
% Arik D. Brown
 
%% Enter Inputs
 
wgts.N = 50;
wgts.nbar = 5;
wgts.SLL_vec = [20 30 35];
wgts.method = 1;
 
wgts.uni_vec = ones(1,wgts.N);
 
wgts.tay_vec=[Taylor(wgts.N,wgts.SLL_vec(1),wgts.nbar)...
    Taylor(wgts.N,wgts.SLL_vec(2),wgts.nbar)...
    Taylor(wgts.N,wgts.SLL_vec(3),wgts.nbar)];
wgts.cheb_vec=[chebyshev(wgts.N,wgts.SLL_vec(1),wgts.method)...
    chebyshev(wgts.N,wgts.SLL_vec(2),wgts.method)...
    chebyshev(wgts.N,wgts.SLL_vec(3),wgts.method)];
 
%% Plot Weights
 
figure(1),clf
plot(1:wgts.N,wgts.uni_vec,'-o','linewidth',2,'color',[0 0 1]),hold
plot(1:wgts.N,wgts.tay_vec(:,1),'--','linewidth',2.5,'color',[0 .7 0])
plot(1:wgts.N,wgts.tay_vec(:,2),'-.','linewidth',2.5,'color',[1 0 0])
plot(1:wgts.N,wgts.tay_vec(:,3),':','linewidth',2.5,'color',[.7 0 1])
plot(1:wgts.N,wgts.cheb_vec(:,1),'--','linewidth',2.5,'color',[0 .7 0])
plot(1:wgts.N,wgts.cheb_vec(:,2),'-.','linewidth',2.5,'color',[1 0 0])
plot(1:wgts.N,wgts.cheb_vec(:,3),':','linewidth',2.5,'color',[.7 0 1])
grid
% xlabel('Element Number','fontweight','bold','fontsize',14)
% ylabel('Voltage','fontweight','bold','fontsize',14)
set(gca,'fontweight','bold','fontsize',14)
legend('Uniform Distribution','25 dB Taylor Distribution', '30 dB Taylor Distribution','35 dB Taylor Distribution'...
    ,'25 dB chebyshev Distribution', '30 dB chebyshev Distribution','35 dB chebyshev Distribution')