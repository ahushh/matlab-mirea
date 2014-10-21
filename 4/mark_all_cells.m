% Дано: робот на клетчатом поле
% Результат: все клетки поля замаркированы
function mark_all_cells(r)
    move_to_south_west(r);
    while ~r.is_bord('n')
        mark_line(r);
        r.step('n');
    end
    mark_line(r);
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

function mark_line(r)
    function do_it(side)
        while ~r.is_bord(side)
            r.mark;
            r.step(side);
        end
        r.mark;
    end
    if r.is_bord('w')
        do_it('o');
    else
        do_it('w');
    end
end