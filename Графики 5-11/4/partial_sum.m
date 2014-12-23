function partial_sum(n, T0)
    axis([-1.5,1.5,-1.5,1.5]);
    f_graph(T0);
    for k=1:n
        ss_graph(n,T0);
    end
end

function ss_graph(n, T0)
    x0 = -10;
    p = Pero(x0, ss(x0,n,T0));
    p.set('lineColor',[rand,rand,rand]);
    for i=x0:1:(-x0)
        p.punct(i, ss(i,n,T0));
    end
    p.draw;
end

function s = ss(t,n,T0)
    T = 1;
    s = a(0,T0) / 2;
    for k=1:n
        s = s + a(k,T0) * cos((2*pi*k*t)/T);
    end
end

function f_graph(T0)
    x0 = -10;
    p = Pero(x0, f(x0,T0));
    p.set('lineColor','r');
    for i=x0:1:(-x0)
        p.punct(i, f(i,T0));
    end
    p.draw;
end

function y = f(t,T0)
    A = 1;
    T = 1;
    if abs(t) <= T0/2
        y = A;
    else %if T0/2 < abs(t) && abs(t) < T
        y = 0;
    end
end

function y = a(k, T0)
    A = 1;
    T = 1;
    if k == 0
        y = (2*A*T0)/T;
    else
        y = (2*A*T/T0)* ( sin(k*pi*T0/T)/(k*pi*T0/T) );
    end
end
