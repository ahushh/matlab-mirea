function x = eleventh(x)
    i = 1;
    len = length(x);
    while i <= len
        if i < len && x(i) == x(i+1)
            x(i) = [];
            x(i) = [];
            len = len - 2;
        else
            i = i +1;
        end
    end
end