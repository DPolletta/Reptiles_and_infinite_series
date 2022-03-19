N = 1:8;

F = arrayfun(@(x) vert(x),N);

S = arrayfun(@(x) hor(x),N);

figure('units','normalized','outerposition',[0.20 0 0.6 1]);

pgon = polyshape([0,0,1,1,2,2],[0,2,2,1,1,0]);

hold on

pg = plot(pgon);
pg.FaceColor = 'g';
pg.FaceAlpha = 1;

pause(1.5);
getframe;

a=0;

for i = 1:8
    
    x_0 = [a,S(i)];
    y_0 = [1,1];

    plot(x_0,y_0,'black');
    plot(y_0,x_0,'black');
    
    a = a+(0.5)^i;

    pgon = polyshape([S(i),S(i),1,1,F(i),F(i)],[S(i),F(i),F(i),1,1,S(i)]);
    pg = plot(pgon);
    pg.FaceColor = 'g';
    pg.FaceAlpha = 1;

            pause(1.5);
            getframe;

    pgon = polyshape([S(i),S(i),1,1,F(i),F(i)],[S(i),F(i),F(i),1,1,S(i)]);
    pg = plot(pgon);
    pg.FaceColor = 'r';
    pg.FaceAlpha = 1;

    pgon = polyshape([S(i)-(0.5)^i,S(i)-0.5^i,1-0.5^i,1-0.5^i,F(i)-0.5^i,F(i)-0.5^i],[S(i)-0.5^i,F(i)-0.5^i,F(i)-0.5^i,1-0.5^i,1-0.5^i,S(i)-0.5^i]);
    pg = plot(pgon);
    pg.FaceColor = 'r';
    pg.FaceAlpha = 1;


            pause(1.5);
            getframe;

    pgon = polyshape([S(i),S(i),1,1,F(i),F(i)],[S(i),F(i),F(i),1,1,S(i)]);
    pg = plot(pgon);
    pg.FaceColor = 'g';
    pg.FaceAlpha = 1;

            pause(1.5);
            getframe;

end

hold off

function m = vert(n)
m = 1 + (0.5)^n;
end

function m = hor(n)
m = 1-(0.5)^n;
end