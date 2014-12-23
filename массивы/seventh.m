function xs = seventh(xs,k)
    for i = 1:k
        t = xs(i);
        xs(i) = xs( length(xs) - k + i);
        xs( length(xs) - k + i) = t;
    end
end