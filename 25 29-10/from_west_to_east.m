% Дано: Робот на клетчатом поле на некотором расстоянии от западной границы
% Дано: Робот на таком же расстоянии от восточной границы
function from_west_to_east(r)
    function do()
        if ~r.is_bord('w')
            r.step('w');
            do();
            r.step('w');
        else
            while ~r.is_bord('o')
                r.step('o');
            end
        end
    end
    do();
end