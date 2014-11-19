function upfunction()
    x0 = -1;
    y0 = up(x0);
    p = Pero(x0,y0);
    for x = -1:0.001:1
        y = up(x);
        p.punct(x,y);
    end
    p.draw;
end

function y = up(x)
    m = 11;
    n = 20;
    y = 0.5;
    for i = 1:m % сумма
        f = 1;
        for j = 1:n % произведение
            f = f * g(j,i);
        end
        y = y + f * cos( pi*i*x );
    end
end
 
function y = g(j,i)
    a = (pi*i) / (2^j);
    y = sin(a) / a;
end