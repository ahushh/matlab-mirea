function r = twelfth(xs,ys)
    r = [];
    i = 1;
    j = 1;
    while i <= length(xs) && j <= length(ys)
        if xs(i) < ys(j)
            r = [r,xs(i)];
            i = i + 1;
        else
            r = [r,ys(j)];
            j = j + 1;
        end
    end
    if i ~= length(xs) || length(xs) == 1
        r = [r, xs(i:end)];
    end
    if j ~= length(ys) || length(ys) == 1
        r = [r, ys(j:end)];
    end
end