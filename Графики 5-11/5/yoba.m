function yoba(n)
    axis([-1,1,-0.5,1.5]);
    T = 1;
    for k=1:n
        p = Pero(-1.1*T, 0);
        p.set('lineColor',[rand,rand,rand]);
        for t = (-1.1*T):0.01:(1.1*T)
            if t > 1
                p.punct(t, 1);
            elseif t < -1
                p.punct(t,0);
            else
                p.punct(t, beta(k,t));
            end
        end
        p.draw;
    end
end

function y = beta(k, t)
    if k == 0
        y = sin((pi/4)*(1+t));
    else
        y = beta(k-1, sin(pi*t/2) );
    end
end
   