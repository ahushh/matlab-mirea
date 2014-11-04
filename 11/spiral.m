% Дано: Робот на клетчатом бесконечном поле без перегородок с одной замаркированной клеткой
% Результат: Робот в замаркированной клетке
function spiral(r)
    count = 1;
    step  = 1;
    side = 'o';
    while ~r.is_mark
        for i=1:step
            if r.is_mark
                break;
            end
            % r.mark;
            r.step(side);
        end
        if side == 'o'
            side = 's';
        elseif side == 's'
            side = 'w';
        elseif side == 'w'
            side = 'n';
        else % side = 'n'
            side = 'o';
        end
        count = count + 1;
        if mod(count,2)
            step = step + 1;
        end
    end
end