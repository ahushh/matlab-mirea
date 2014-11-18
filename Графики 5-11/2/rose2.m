function rose2()
    a = 1;
    
    for d=0:30:360
        phi0 = 1;
        ro = a * cosd(3*phi0+d);
        x0 = ro * cosd(phi0+d);
        y0 = ro * sind(phi0+d);
        p = Pero(x0,y0);

        for phi = 2:360
            ro = a * cosd(3*phi+d);
            x = ro * cosd(phi+d);
            y = ro * sind(phi+d);
            p.punct(x,y)
        end
        p.draw;
    end
end
