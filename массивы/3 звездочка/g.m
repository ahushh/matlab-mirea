function result = g(xs, itsmax)
    result = [];
    x = xs(1);
    for i = 1:length(xs)
        if itsmax
            if xs(i) > x
                x = xs(i);
                result = [];
            end
        else
            if xs(i) < x
                x = xs(i);
                result = [];
            end
        end
        if xs(i) == x
            result = [result, i];
        end
    end
end