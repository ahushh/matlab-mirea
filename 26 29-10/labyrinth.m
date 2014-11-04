function labyrinth(r)
    function do()
        if ~r.is_mark()
            r.mark;
            if ~r.is_bord('n');
                r.step('n'); do(); r.step('s');
            end
            if ~r.is_bord('s');
                r.step('s'); do(); r.step('n');
            end
            if ~r.is_bord('w');
                r.step('w'); do(); r.step('o');
            end
            if ~r.is_bord('o');
                r.step('o'); do(); r.step('w');
            end
        end
    end
    do();
end