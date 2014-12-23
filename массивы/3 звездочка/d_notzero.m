% not zero
function a = d_notzero(v)
    a = [];
    size = length(v);
    for i = 1:size
        if v(i) ~= 0
            a = [a,i];
        end
    end
end