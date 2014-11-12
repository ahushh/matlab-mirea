% Визуализирует построение циклоиды 
function cycloid(n)
    radius = 1;    
    axis([-radius,10*n*radius,-radius,(n*radius)/2]);
    point_radius = 0.02;
    
    line = Pero(0,0);
    point = draw_circle(0,0,point_radius,'patch','r');
    circle = draw_circle(0,radius,radius,'line','b');
    
    trigger = true;
    for t = 0:10:(n*360)
        delete(point);
        delete(circle);
        x = radius*((t*pi)/180 - sind(t));
        y = radius*(1 - cosd(t));
        point = draw_circle(x,y,point_radius,'patch','r');

        if y == 0 || y == 2*radius
            trigger = ~trigger;
        end
        % -------------------------------------------------------
        y0 = radius;
        % (x-x0)^2 + (y-y0)^2 = radius^2
        % (x-x0)^2 = radius^2 - (y-y0)^2
        % x0^2 + (-2*x)*x0 + ( (y-y0)^2 + x^2 - radius^2 ) = 0
        b = (-2*x);
        a = 1;
        c = ( (y-y0)^2 + x^2 - radius^2 );
        % a*(x0^2) + b*x0 + c = 0;
        d = b^2 - 4*a*c;
        cX = (-b + sqrt(d))/2*a;
        % -------------------------------------------------------
        if trigger
            cX = cX - 2*abs(cX-x);
        end
        circle = draw_circle(cX,radius,radius,'line','b');
        line.punct(x,y);
        line.draw;
        pause(0.01);
    end
end

function [circle] = draw_circle(x0, y0, radius, fill, color)
    p = Pero(x0 + radius*cosd(0), y0 + radius*sind(0));  
    p.set('lineColor',color);
    for d = 0:360
        x = x0 + radius * cosd(d);
        y = y0 + radius * sind(d);
        p.punct(x,y);
    end
    circle = p.draw(fill);
end