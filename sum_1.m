figure('units','normalized','outerposition',[0.20 0 0.6 1]);

pgon = polyshape([0,0,1,1],[0,1,1,0]);

pg = plot(pgon);
pg.FaceColor = 'w';

pause(1.5);
getframe;

hold on

a = 0;
b = 1;

for i = 1:4
    pgon = polyshape([a,a,a+0.5^(2*i-1),a+0.5^(2*i-1)],[a,b,b,a]);

plot(pgon);

pause(1.5);
getframe;

pgon = polyshape([a+0.5^(2*i-1),a+0.5^(2*i-1),b,b],[a,b-0.5^(2*i-1),b-0.5^(2*i-1),a]);

plot(pgon);

pause(1.5);
getframe;

pgon = polyshape([a+0.5^(2*i-1)+0.5^(2*i),a+0.5^(2*i-1)+0.5^(2*i),b,b],[a+0.5^(2*i-1),b,b,a+0.5^(2*i-1)]);

plot(pgon);

pause(1.5);
getframe;

pgon = polyshape([a+0.5^(2*i-1),a+0.5^(2*i-1),a+0.5^(2*i-1)+0.5^(2*i),a+0.5^(2*i-1)+0.5^(2*i)],[a+0.5^(2*i-1)+0.5^(2*i),b,b,a+0.5^(2*i-1)+0.5^(2*i)]);

plot(pgon);

pause(1.5);
getframe;

a = a + (0.5)^(2*i-1);
b = b - (0.5)^(2*i);
end

hold off