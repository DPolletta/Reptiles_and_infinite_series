a = input('a >> ');
b = 0;

fprintf('\nPlease enter r such that |r| < 1');

r = input('\nr >> ');

while abs(r) >= 1
    fprintf('\nPlease enter r such that |r| < 1');

    r = input('\nr >> ');
end

figure('units','normalized','outerposition',[0.20 0 0.6 1]);

x = 0;
y = 0;

hold on

for i = 0:10

    plot([x x+a*r^(2*i)],[y y],'r');
    pause(1.5);
    getframe;
    plot([x+a*r^(2*i) x+a*r^(2*i)],[y y+a*r^(2*i+1)],'r');
    pause(1.5);
    getframe;

    x = x + a*r^(2*i);
    y = y + a*r^(2*i+1);
 
end

A = [a (a/(1-r^2))];
B = [0 ((a*r)/(1-r^2))];

line(A,B);
pause(1.5);
getframe;

C = [0 (a/(1-r^2))];
D = [0 ((a*r)/(1-r^2))];

line(C,D);
pause(1.5);
getframe;

hold off

fprintf('\n');