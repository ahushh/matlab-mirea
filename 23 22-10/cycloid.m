% Визуализирует построение циклоиды 
function cycloid(n)
    radius = 1;    
    point_radius = 0.01;
    
    line = Pero(0,0);
    x = radius*(0*pi/180) - radius*sind(0);
    y = radius - radius*cosd(0);
    point = draw_circle(x,y,point_radius,'patch');      
    circle = draw_circle(0,0,radius,'line'); %???
    
    for t = 0:10:n
        delete(point);
        delete(circle);
        x = radius*(t*pi/180) - radius*sind(t);
        y = radius - radius*cosd(t);
        point = draw_circle(x,y,point_radius,'patch');
        circle = draw_circle(0,0,radius,'line'); %????
        line.punct(x,y);
        line.draw;
        pause(0.01);
    end
end

function [circle] = draw_circle(x0, y0, radius, fill)
    p = Pero(x0 + radius*cosd(0), y0 + radius*sind(0));  
    for d = 0:360
        x = x0 + radius * cosd(d);
        y = y0 + radius * sind(d);
        p.punct(x,y);
    end
    circle = p.draw(fill);
end