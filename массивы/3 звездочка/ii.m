function i = (xs)
    s = 1;
    result = [];
    for x = xs
        s = s * x;
        result = [result,s];
    end
end