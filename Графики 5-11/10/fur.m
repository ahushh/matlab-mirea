function fur
    N = 10;
    for n=1:N
        plot(n);
    end
end

function plot(n)
    p = Pero(-1,ss(n,-1));
    for x=-1:0.01:1
        y = ss(n,x);
        p.punct(x,y);
    end
    p.set('lineColor',[rand,rand,rand]);
    p.draw;
end

function s = ss(n,x)
    s = 0;
    for k=0:n
        s = s + a(x,k);
    end
end

% sinx
function y = a(x,k)
    y = (-1)^k * ( ( x^(2*k+1) )/( factorial(2*k+1) ) );
end

function z = factorial(n)
    z = 1;
    for i=1:n
        z = z * i;
    end
end