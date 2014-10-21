% Дано: робот на клетчатом поле
% Результат: Все клетки поля замаркированы в шахматном порядке.
%            (Клетка с первоначальным расположением робота должна быть замаркирована)
function chess(r)
    move_to_south_west(r);
    mark_cell = true;
    while ~r.is_bord('n')
        mark_cell = mark_line(r, mark_cell);
        r.step('n');
    end
    mark_line(r, mark_cell);
end

% задача 3
function move_to_south_west(r)
    while ~r.is_bord('s')
        r.step('s');
    end
    while ~r.is_bord('w')
        r.step('w');
    end
end

function [mark_cell] = mark_line(r, mark_cell)
    function do_it(side)
        while ~r.is_bord(side)
            if mark_cell
                r.mark;
            end
            mark_cell = ~mark_cell;
            r.step(side);
        end
    end

    mark_cell = ~mark_cell;
    if r.is_bord('w')
        do_it('o');
    else
        do_it('w');
    end

    % final cell
    if mark_cell
        r.mark;
    end
        
end