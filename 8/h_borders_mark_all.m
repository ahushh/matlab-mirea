% Дано: Робот на клетчатом поле только с горизонтальными перегородками
% Результат: Все клетки поля замаркированы
function h_borders_mark_all(r)
    go(r,'w','s',false);
    go(r,'o','n',true);
end

function go(r,x,y,mark)
    noway = 0;
    while ~noway
        while ~r.is_bord('w')
            r.step('w');
        end
        if mark
            while ~r.is_bord('o')
                r.mark;
                r.step('o');
            end
            r.mark;
            while ~r.is_bord('w')
                r.step('w');
            end
        end

        while r.is_bord(y)
            if r.is_bord('o')
                noway = 1;
                break;
            else
                r.step('o');
            end
        end
        if ~noway
            r.step(y);
        end
    end
end
