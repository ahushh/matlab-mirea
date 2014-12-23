function [xs,p] = fourteenth_a(xs)
    p = 1:length(xs);
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
        h = findmax( xs(1:z) );
        t = xs(z);
        t2 = p(h);
        p(h) = z;
        p(z) = t2;
        xs(z) = xs(h);
        xs(h) = t;
        z = z - 1;
    end
end
