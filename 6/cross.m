% Все клетки в северо-западном, северо-восточном, юго-западном и юго-восточном направлениях замаркированы (по диагонали)
function cross(r)
    r.mark;
    draw(r, 'o','n','w','s');
    draw(r, 'w','s','o','n');
    draw(r, 'w','n','s','o');
    draw(r, 'o','s','w','n');
end

function draw(r, x, y, back_x, back_y)
    i = 0;
    while ~r.is_bord(x) && ~r.is_bord(y)
        r.mark;
        r.step(x);
        r.step(y);
        i = i + 1;
    end
    r.mark;
    for j = 0:i
        r.step(back_x);
        r.step(back_y);
    end
end