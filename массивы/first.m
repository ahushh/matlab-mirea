n = 10;
%% a
a = zeros(10)
a = ones(10)
%% b
a(n) = 0
%% c
a = []
for i = 1:n
    a(i) = 0;
end
a
for i = 1:n
    a(i) = 1;
end
a
%% g
a = []
for i = 1:n
    a = [a, []];
end
