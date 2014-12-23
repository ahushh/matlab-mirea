function zs = eighth(xs, k)
    len = length(xs);
    zs = [];
    for i = 1:len
        if i+k <= len
            zs(i+k) = xs(i);
        else
            zs( i+k-len ) = xs(i);
        end
    end
end
