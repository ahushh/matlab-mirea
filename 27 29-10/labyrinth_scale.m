function labyrinth_scale(r)
    maxx = 0; maxy = 0;
    x = 0; y = 0;
    function do(side)
        if ~r.is_mark()
            r.mark;
            if ~r.is_bord('n');
                r.step('n'); do('n'); r.step('s');
            end
            if ~r.is_bord('s');
                r.step('s'); do('s'); r.step('n');
            end
            if ~r.is_bord('w');
                r.step('w'); do('w'); r.step('o');
            end
            if ~r.is_bord('o');
                r.step('o'); do('o'); r.step('w');
            end
        end
        if x > maxx
            maxx = x;
        elseif y > maxy
            maxy = y;
        end
        if side == 'n'
            x = x + 1;
        elseif side == 'o'
            y = y + 1;
        elseif side == 'w'
            y = y - 1;
        elseif side == 's'
            x = x - 1;
        end
    end
    do('nope');
    display(maxx);
    display(maxy);
end