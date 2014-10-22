function concentric_circles(n, k, color1, color2)
    % Рисует концентрические окружности, использую исполнитель Перо
    %
    % Arguments
    % n - количество окружностей
    % k - коэфициент увеличения ширины линии окружности
    % color1 - первый цвет
    % color2 - второй цвет
    %
    width = 0.5;
    radius1 = 1;
    
    color = color1;
    for radius = radius1:n
        draw_circle(radius, width, color);
        width = width*k;
        if color == color1
            color = color2;
        else
            color = color1;
        end
    end
end

function draw_circle(radius, width, color)
    p = Pero(radius*cosd(0), radius*sind(0));  
    p.set('lineWidth', width);
    p.set('lineColor', color);
    for d = 0:360
        x = radius * cosd(d);
        y = radius * sind(d);
        p.punct(x,y);
    end
    p.draw;
end