%% b
function second2(xs)
    mylength(xs);
end

function size = mylength(xs)
    size = 0;
    while 1
        try
            xs[size];
            size = size + 1;
        catch
            break;
        end
    end
end
