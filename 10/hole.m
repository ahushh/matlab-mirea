function hole(r)
    a = 1;
    while r.is_bord('n')
        if mod(a,2)
            for i=1:a
                r.step('w');
            end
        else
            for i=1:a
                r.step('o');
            end
        end
        a = a + 1;
    end
    r.step('n');
end