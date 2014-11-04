function y = fastfib(n)
    if n < 0
        error('Argument must be a positive number');
    end
    h = containers.Map;
    
    function y = f(x)
        if x == 2 || x == 1 || x == 0
            y = 1;
        else
            if ~h.isKey(int2str(x-1))
                h(int2str(x-1)) = f(x-1);
            end
            x1 = h(int2str(x-1));

            if ~h.isKey(int2str(x-2))
                h(int2str(x-2)) = f(x-2);
            end
            x2 = h(int2str(x-2));
            y = x1 + x2;
        end
    end
    y = f(n);
end