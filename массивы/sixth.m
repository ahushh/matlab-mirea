function zs = sixth(xs)
    zs = [];
    i = length(xs);
    while i >= 1
        zs = [zs, xs(i)];
        i = i - 1;
    end
end