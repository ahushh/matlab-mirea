function rose()
    a = 1;
    
    for d=0:2:(30*120)
        phi0 = 1;
        ro = a * cosd(3*phi0);
        x0 = ro * cosd(phi0);
        y0 = ro * sind(phi0);
        p = Pero(x0,y0);
        
        for phi = 2:360
            ro = a * cosd(3*phi);
            x = ro * cosd(phi);
            y = ro * sind(phi);
            p.punct(x,y)
        end
        if d
            p.transform(@rotate,d);
        end
        p.draw;
    end
end

function [x1,y1] = rotate(x,y,d)
    x1 = x*cosd(d) + y*sind(d);
    y1 = -x*sind(d) + y*cosd(d);
end