function bonus()
    axis([-2,2,-2,2]);
    d = 0;
    x1 = []; x2 = []; x3 = []; x4 = [];
    flag = false;
    yoba = false;
    yoba2 = false;
    crazy = false;
    while true
        if rand/50 > rand
            crazy = ~crazy;
        end
        a = 1;
        if mod(d,2)
            a = 1 + abs(rand/5);
        else
            a = 1;
        end
        if abs(rand/100) > abs(rand)
            yoba = ~yoba;
        end
        if abs(rand/150) > abs(rand)
            yoba2 = ~yoba2;
        end
        if crazy
           d = d + rand*rand;
           if rand/2 > rand
               d = d + d^abs(rand);
               % d = -d;
           end
        else
           d = d + 1;
        end
        p1 = Pero(-a,a);
        if yoba
            c = [rand,rand/100,rand/100];
            c1 = [rand,rand,rand];
        else
            c = [rand,rand,rand];
            c1 = [rand,rand/100,rand/100];
        end
        s = rand*(rand*66);
        if yoba2
            if rand > rand
                s = rand*rand*100;
            else
                s = rand*rand/1000;
            end
        end
        if rand/50 > rand
            style = ':';
        elseif rand/50 > rand
            style = '--';
        elseif rand/50 > rand
            style = '-.';
        elseif rand*10 > rand
            style = '-';
        else
            style = '-';
        end            

        if rand > rand
            marker = '+';
        elseif rand > rand
            marker = 'pentagram';
        elseif rand > rand
            marker = 'o';
        elseif rand > rand
            marker = '*';
        elseif rand > rand
            marker = '.';
        elseif rand > rand
            marker = 'x';
        elseif rand > rand
            marker = 'square';
        elseif rand > rand
            marker = 'diamond';
        elseif rand > rand
            marker = 'v';
        elseif rand > rand
            marker = '^';
        elseif rand > rand
            marker = '>';
        elseif rand > rand
            marker = '<';
        elseif rand > rand
            marker = 'hexagram';
        end
        if rand > rand
            marker = 'pentagram';
        end
        
        p1.set('lineColor',c);
        p1.set('lineStyle',style);
        p1.set('patchColor',c1);
        p1.set('lineWidth',s);
        p1.set('marker',marker);
        p1.punct(0,a);
        p1.punct(0,-a);
        p1.punct(a,-a);

        p2 = Pero(a,a);
        p2.set('lineColor',c);
        p2.set('lineStyle',style);
        p2.set('patchColor',c1);
        p2.set('lineWidth',s);
        p2.set('marker',marker);
        p2.punct(a,0);
        p2.punct(-a,0);
        p2.punct(-a,-a);

        if rand > rand
            p3 = Pero(-2,-2);
            if rand > rand
                p3.set('lineColor',[rand,rand,rand]);
            else
                p3.set('lineColor',[0,0,0]);
            end
            p3.set('lineWidth',99999);
            p3.punct(2,2);
            p3.draw;
        end

        if d
            p1.transform(@rotate,d);
            p2.transform(@rotate,d);
        end

        if rand > rand
            delete(x1);
            delete(x2);
        else
            delete(x3);
            delete(x4);
            x3 = x1;
            x4 = x2;
        end
        x1 = p1.draw;
        x2 = p2.draw;
        pause(abs(rand/100));
    end
end

function [x1,y1] = rotate(x,y,d)
    x1 = x*cosd(d) + y*sind(d);
    y1 = -x*sind(d) + y*cosd(d);
end
