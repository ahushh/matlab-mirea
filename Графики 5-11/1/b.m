function b(n)
    for a=1:n
        x = a*(cosd(0)^3);
        y = a*(sind(0)^3);
        p = Pero(x,y);

        draw_circle(a);
        for t = 0:360
             x = a*(cosd(t)^3);
             y = a*(sind(t)^3);
             p.punct(x,y);
        end
        p.draw;
    end
end

function draw_circle(radius)
    p = Pero(radius*cosd(0), radius*sind(0));  
    for d = 0:360
        if mod(d,2) == 0
            p.draw;
            x = radius * cosd(d);
            y = radius * sind(d);
            p = Pero(x, y);
        else
            x = radius * cosd(d);
            y = radius * sind(d);
            p.punct(x,y);
        end
    end
    p.draw;
end