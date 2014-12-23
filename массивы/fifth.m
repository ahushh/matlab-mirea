function [a,b] = fifth(xs)
    a = [];
    b = [];
    z = 0;
    for j = 1:length(xs)
        if xs(j) ~= 0
            a = [a,xs(j)];
            b = [b,z];
            z = 0;
        else
            z = z + 1;
        end
    end
end