% Дано: на поле имеются замаркированные клетки, робот в юго-западном углу
% Результат: робот в ряду горизонтальном, котором наибольшее число идущих подряд замаркированных клеток
function max_line(r)
    longest = -inf;
    current_line = 1;
    max_line = 1;
    while true
        new = next_line(r);
        if new > longest
            longest = new;
            max_line = current_line;
        end
        if r.is_bord('n')
            break;
        end
        r.step('n');
        current_line = current_line + 1;
    end
    goto(r, current_line, max_line);
end

function len = next_line(r)
    if r.is_bord('w')
        side = 'o';
    else
        side = 'w';
    end
    len = max_marked(r, side);
end

% Go to the destination line
function goto(r, current, to)
    if current > to
        side = 's';
    else
        side = 'n';
    end
    for i = 1:abs(current - to)
        r.step(side);
    end
end

% Find the longest sequence of marked cells
function [longest] = max_marked(r, side)
    longest = -inf;
    while true
        n = next_marked(r, side);
        if n > longest
            longest = n;
        end
        if r.is_bord(side)
            break;
        end
    end
end

function len = next_marked(r, side)
    len = 0;
    % Skip empty cells
    while ~r.is_mark && ~r.is_bord(side)
        r.step(side);
    end

    while r.is_mark && ~r.is_bord(side)
        len = len + 1;
        r.step(side);
    end
    if r.is_mark
        len = len + 1;
    end
end