% Дано: робот на клетчатом поле
% Результат: 1) все клетки под роботом, над роботом, слева и справа от робота замаркированы (по вертикали и горизонтали)
%            2) робот в исходном положении
function mark_cross(r)
    mark_line(r, 'n', 's');
    mark_line(r, 's', 'n');
    mark_line(r, 'o', 'w');    
    mark_line(r, 'w', 'o');
end

function mark_line(r, side, backside)
    steps = 0;
    while ~r.is_bord(side)
        r.step(side);
        r.mark;
        steps = steps + 1;
    end
    for i = 1:steps
        r.step(backside);
    end
end