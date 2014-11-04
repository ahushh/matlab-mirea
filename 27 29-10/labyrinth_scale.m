function labyrinth_scale(r)
    maxx = 0; maxy = 0;
    x = 0; y = 0;
    function do()
        if x > maxx
            maxx = x;
        elseif y > maxy
            maxy = y;
        end
        if ~r.is_mark()
            r.mark;
            if ~r.is_bord('n');
                y = y + 1;
                r.step('n');
                do();
                r.step('s');
                y = y - 1;
            end
            if ~r.is_bord('s');
                y = y - 1;
                r.step('s');
                do();
                r.step('n');
                y = y + 1;
            end
            if ~r.is_bord('w');
                x = x - 1;
                r.step('w');
                do();
                r.step('o');
                x = x + 1;
            end
            if ~r.is_bord('o');
                x = x + 1;
                r.step('o');
                do();
                r.step('w');
                x = x - 1;
            end
        end
    end
    do();
    display(maxx+1);
    display(maxy+1);
end