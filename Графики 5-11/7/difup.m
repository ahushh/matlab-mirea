function difup()
    plot(1);
    plot(2);
    plot(3);
end

function plot(k)
    x0 = -1;
    y0 = up(x0,k);
    p = Pero(x0,y0);
    for x = -1:0.001:1
        y = up(x,k);
        p.punct(x,y);
    end
    subplot(3,1,k);
    p.draw;
end

function y = up(x,k)
    m = 11;
    n = 20;
    y = 0;
    if k == 1
        y = 0.5;
    end
    for i = 1:m % сумма
        f = 1;
        for j = 1:n % произведение
            f = f * g(j,i);
        end
        if k == 1
            y = y + f * cos( pi*i*x );
        elseif k == 2
            y = y - f * (pi*i) * sin( pi*i*x );
        else
            y = y - f * ((pi*i)^2) * cos( pi*i*x );
        end
    end
end
 
function y = g(j,i)
    a = (pi*i) / (2^j);
    y = sin(a) / a;
end