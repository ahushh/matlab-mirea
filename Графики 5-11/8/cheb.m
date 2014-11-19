function z = cheb(n)
    plot(n,1);
    plot(n,2);
end

function plot(n,k)
    for i=1:n
        x0 = -1;
        y0 = chebfunction(x0,i,k);
        p = Pero(x0,y0);
        p.set('lineColor',[rand,rand,rand]);
        for x=-1:0.01:1
            y = chebfunction(x,i,k);
            p.punct(x,y);
        end
        subplot(2,1,k);
        p.draw;
    end
end

function y = chebfunction(x,n,k)
    if n == 0
        y = 1;
    elseif n == 1
        if k == 1
            y = x;
        else
            y = 2 * x;
        end
    else
        y = 2*x*chebfunction(x,n-1,k) - chebfunction(x,n-2,k);
    end
end    

