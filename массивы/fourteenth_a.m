function [xs,p] = fourteenth_a(xs)
    p = zeros(1,length(xs));
    for i=1:length(xs)
        p(i) = i;
    end
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
        t2 = p(z);
        xs(z) = xs(h);
        xs(h) = t;
        p(z) = h;
        p(h) = t2;
        z = z - 1;
    end
end
