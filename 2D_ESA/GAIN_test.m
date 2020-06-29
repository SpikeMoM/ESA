theta.numpts=3610;%Number of angle pts in theta
phi.numpts=361;%Number of angle pts in phi

theta.min=0;%degrees
theta.max=90;%degrees

phi.min=0;%degrees
phi.max=360;%degrees

theta.vec=linspace(theta.min, theta.max, theta.numpts);%degrees
phi.vec=linspace(phi.min, phi.max, phi.numpts);%degrees
[theta.mat, phi.mat]=meshgrid(theta.vec,phi.vec);

thetarad=theta.vec*pi/180;
phirad=phi.vec*pi/180;
thetamat_rad=theta.mat*pi/180;
 
dphi=(phirad(length(phirad))-phirad(1))/theta.numpts;
dtheta=(thetarad(length(thetarad))-thetarad(1))/phi.numpts;
dsintheta=abs(sin(thetamat_rad));
Area = sum(sum((dsintheta*dphi*dtheta)))-2*pi;