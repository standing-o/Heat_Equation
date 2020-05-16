clear; clc; close all;

nx=50; x=linspace(0,1,nx)'; h=x(2)-x(1); 
alpha=0.5; dt=alpha*h^2; 

u=sin(pi*x);
nu=0*x;

A_prime=zeros(nx-2);
for ix=1:nx-2
    A_prime(ix,ix)=1-alpha;
    if ix>1
        A_prime(ix-1,ix) = alpha/2;
    end
    if ix<nx-2
        A_prime(ix+1,ix)=alpha/2;
    end
end

B_prime=zeros(nx-2);
for ix=1:nx-2
    B_prime(ix,ix)=1+alpha;
    if ix>1
        B_prime(ix-1,ix) = -alpha/2;
    end
    if ix<nx-2
        B_prime(ix+1,ix)=-alpha/2;
    end
end

for it=1:100
    
    % Approximation - Crank-Nicolson
    ix=2:nx-1;
    nu(ix)=B_prime\(A_prime)*u(ix);
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