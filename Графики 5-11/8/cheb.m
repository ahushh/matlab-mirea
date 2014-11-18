function z = cheb(x,n,kind)
    if kind == 1
        z = kind1(x,n);
    else
        z = kind2(x,n);
    end
end

function y = kind1(x,n)
    if n == 0
        y = 1;
    elseif n == 1
        y = x;
    else
        y = 2*x*kind1(x,n-1) - kind1(x,n-2);
    end
end

function y = kind2(x,n)
    if n == 0
        y = 1;
    elseif n == 1
        y = 2 * x;
    else
        y = 2*x*kind2(x,n-1) - kind2(x,n-2);
    end
end