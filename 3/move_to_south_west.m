% Дано: робот на клетчатом поле
% Результат: робот в юго-западном углу
function move_to_south_west(r)
    while ~r.is_bord('s')
        r.step('s');
    end
    while ~r.is_bord('w')
        r.step('w');
    end
end