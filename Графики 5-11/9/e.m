function s = e(n)
    s = 0;
    p = 1;
    for k=0:1:n
        f = fact(k,p); p = f;
        s = s + 1/f;
        
    end
end

function z= fact(n,p)
    if n == 0 || n == 1
        z = 1;
    else
        z = n*p;
    end
end