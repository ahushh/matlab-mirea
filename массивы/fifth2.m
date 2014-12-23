function xs = fifth2(a,b)
    xs = [];
    for i = 1:length(a)
        for j = 1:b(i)
            xs = [xs,0];
        end
        xs = [xs,a(i)];
    end
end
