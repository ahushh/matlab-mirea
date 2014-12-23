% работает неправильно
function result = fifteenth(xs)
    if length(xs) <= 1
        result = xs;
    else
        m = ceil(length(xs)/2);
        l = fifteenth( xs(1:m) );
        r = fifteenth( xs(m+1:end) );
        if l(end) <= r(1)
            result = [l, r];
            return
        end
        result = merge(l,r);
    end
end
function r = merge(xs,ys)
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