A = [0 0];
B = [0 1];

figure('units','normalized','outerposition',[0.20 0 0.6 1]);

plot(0,1,'r*');

line(A,B);

hold on

C = [0 1];
D = [0 0];

line(C,D);
plot(1,0,'r*');

pause(1.5);
getframe;

t = 0:0.01:0.5;

plot(cos(pi*t),sin(pi*t));
pause(1.5);
getframe;

x = 1;

for i = 1:200

    C = [0 cos(x)];
    D = [0 sin(x)];
    plot(cos(x),sin(x), 'r*')

    line(C,D);
    pause(1.5/i);
    getframe;

    x = x +((-1)^(i))*(1/(2*i+1));
end

A = [0 1];
B = [0 1];

plot(1,1,'r*');
line(A,B);
pause(0);
getframe;

