function result = eighteenth(xs)
    if length(xs) == 0
        result = [];
    else
        m = xs(randi(length(xs)));
        l = xs( xs < m );
        r = xs( xs > m );
        result = [ eighteenth(l), m, eighteenth(r) ];
    end
end