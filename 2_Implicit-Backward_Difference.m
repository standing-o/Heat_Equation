clear; clc; close all;

nx=20; x=linspace(0,1,nx)'; h=x(2)-x(1);
alpha=0.5; dt=alpha*h^2;

u=sin(pi*x);
nu=0*x;

B=zeros(nx-2);
for ix=1:nx-2
    B(ix,ix)=1+2*alpha;
    if ix>1
        B(ix-1,ix) = -alpha;
    end
    if ix<nx-2
        B(ix+1,ix)=-alpha;
    end
end

for it=1:100
    
    % Approximation - Implicit
    ix=2:nx-1;
    nu(ix)=B\u(ix);
    
    u=nu;
    
    % Exact value
    t=dt*it;
    exu=exp(-pi^2*t)*sin(pi*x);
    
    if mod(it,1)==0
        clf;
        plot(x,exu,'k');
        hold on;
        plot(x,u,'ro');
        axis([x(1) x(end) 0 1]);
        drawnow;
    end
    
end