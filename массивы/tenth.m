function z = tenth(x)
    z = [x(x < 0), x(x > 0)];
end