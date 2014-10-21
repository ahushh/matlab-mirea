% Дано: на поле имеются замаркированные клетки, робот в юго-западном углу
% Результат: подсчитано средняя температура замаркированных клеток
function avrg_temp(r)
    marked = 0;
    temp = 0;
    while ~r.is_bord('n')
        if r.is_bord('w')
            [q, t] = doline(r, 'o');
        else
            [q, t] = doline(r, 'w');
        end
        marked = marked + q;
        temp = temp + t;
        r.step('n');
    end
    % the top line
    if r.is_bord('w')
        [q, t] = doline(r, 'o');
    else
        [q, t] = doline(r, 'w');
    end

    marked = marked + q;
    temp = temp + t;
    
    marked / temp;
end

function [q, t] = doline(r, side)
    q = 0;
    t = 0;
    while ~r.is_bord(side)
        if r.is_mark
            q = q + 1;
            t = t + r.get_tmpr;
        end
        r.step(side);
    end
end
