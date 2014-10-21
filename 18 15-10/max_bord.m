% Дано: робот у левой границы некоторо ряда, сверху ряда имеются перегородки
% Результат: подсчитано число самых длиных перегордок

function max_bord(r)
    longest = -inf;
    q = 0;
    while true
        n = next_bord(r);
        if n > longest
            longest = n;
            q = 1;
        elseif n == longest
            q = q + 1;         
        end
        if r.is_bord('o')
            break;
        end
    end
    disp(q);
end

function len = next_bord(r)
    len = 0;
    % Skip cells without borders
    while ~r.is_bord('n') && ~r.is_bord('o')
        r.step('o')
    end

    while r.is_bord('n') && ~r.is_bord('o')
        len = len + 1;
        r.step('o');
    end
    if r.is_bord('n')
        len = len + 1;
    end
end
