function x = b(xs, itsmax)
    x = xs(1);
    for i = 1:length(xs)
        if itsmax
            if xs(i) > x
                x = xs(i);
            end
        else
            if xs(i) < x
                x = xs(i);
            end
        end
    end
end