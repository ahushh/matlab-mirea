function [x,p] = fourteenth(xs)
    x = mysort(xs);
    p = [1,3,5];
end

function xs = mysort(xs)
    function m = findmax(ns)
        m = 1;
        for i = 2:length(ns)
            if ns(m) < ns(i)
                m = i;
            end
        end
    end

    z = length(xs);
    while z ~= 0
        xs(z) = xs( findmax( xs(1:z) ) );
        z = z - 1;
    end
end
