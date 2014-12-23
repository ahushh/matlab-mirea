function xs = z(xs)
    s = 0;
    for i = 1:length(xs)
        s = s + xs(i);
        xs(i) = s;
    end
end