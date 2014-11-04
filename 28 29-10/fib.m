% Вычисление числа фибоначчи с помощью рекурсии
function y = fib(n)
    if n == 2 || n == 1 || n == 0
        y = 1;
    else
        y = fib(n-1) + fib(n-2);
    end
end