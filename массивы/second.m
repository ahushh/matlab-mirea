function size = second(xs)
    size = 0;
    while ~isempty(xs)
        xs(end) = [];
        size = size + 1;
    end
end
