function doublex(r)
    function do()
        if ~r.is_bord('n')
            r.step('n');
            do();
            r.step('s');
            r.step('s');        
        end
    end
    do();
end