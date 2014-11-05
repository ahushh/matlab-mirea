% Дано: Робот на клетчатом поле только с горизонтальными перегородками
% Результат: Робот в любом углу
function h_borders(r,x,y)
    if x == 'w'
        x1 = 'o'
    else
        x1 = 'w';
    end

    while ~r.is_bord(x)
        r.step(x);
    end
    
    while ~go_upright(r,x1,y)
        while ~r.is_bord(x)
            r.step(x);
        end
    end

    while ~r.is_bord(x)
        r.step(x);
    end
end

function [noway] = go_upright(r,x,y)
    noway = 0;
    while r.is_bord(y)
        if r.is_bord(x)
            noway = 1;
            break;
        else
            r.step(x);
        end
    end
    if ~noway
        r.step(y);
    end
end