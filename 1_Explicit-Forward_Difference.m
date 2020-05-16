clear; clc; close all;

nx=7; x=linspace(0,1,nx)'; h=x(2)-x(1);
alpha=0.5; dt=alpha*h^2;

u=sin(pi*x);
nu=0*x;

A=zeros(nx-2);
for ix=1:nx-2
    A(ix,ix)=1;
    if ix > 1
        A(ix-1,ix) = -0.01;
    end
    if ix < nx-2
        A(ix+1,ix)= -0.01;
    end
end

for it=1:100

    % Approximation - Explicit
    ix=2:nx-1;
    nu(ix)=A*u(ix);
    
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