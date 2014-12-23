function xs = ninth_a(xs)
    len = length(xs);
    i = 1;
    while i < len
        if xs(i) < 0
            xs(i) = [];
            len = len - 1;
        else
            i = i + 1;
        end
    end
end