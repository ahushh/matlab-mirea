function [xs,p] = fourteenth_b(xs)
    p = 1:length(xs);
    for i=1:length(xs)
        for j=1:length(xs)-i
            if xs(j) > xs(j+1)
                temp = p(j);
                p(j) = p(j+1);
                p(j+1) = temp;

                temp = xs(j);
                xs(j) = xs(j+1);
                xs(j+1) = temp;
            end
        end
    end
end
