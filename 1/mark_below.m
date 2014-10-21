function mark_below(r)
% Дано: робот в некоторой клетке, внутренних перегородок нет.
% Результат: 1) Робот в исходной клетке
%            2) Все клетки под роботом закрашены
    count = 0;
    while ~r.is_bord('s')
        r.step('s');
        r.mark;
        count = count + 1;
    end
    for i = 0:(count-1)
        r.step('n');
    end
end