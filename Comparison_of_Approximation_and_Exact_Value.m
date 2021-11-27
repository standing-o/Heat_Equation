clear; clc; close all;

nx = 100; x = linspace(0,1,nx); h=x(2)-x(1);
dt = 0.5*h^2;

u = sin(pi*x); nu = 0*x;

for it = 1:101
    % Approximation
    for ix = 2:nx-1
        nu(ix) = u(ix)+(dt/h^2)*(u(ix+1)-2*u(ix)+u(ix-1));
    end
    u = nu;
    % Exact value
    t = dt*it;
    exu = exp(-pi^2*t)*sin(pi*x);
    clf;
    plot(x,exu,'k'); % black
    hold on; 
    plot(x,u,'ro'); % red circle
    axis([x(1),x(end),0,1]);
    drawnow;
end    