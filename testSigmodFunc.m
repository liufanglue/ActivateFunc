%a = [-2, -1, 1; -1, -2, 1; -3, -1, 1; -1, -3, 1; 2, 1, -1; 1, 2, -1]
%rank(a)
%[m, n] = eig(a * a')
%[m, n] = eig(a' * a)

%b = [-2, -1, 1; -1, -2 ,1; 2, 1, -1; 1, 2, -1]
%rank(b)
%[m, n] = eig(b * b')

%subplot(1, 1, 1)
%f = @(x,y,z) x .^ 2 + y .^ 2 + z .^ 2 - 9;      % 函数表达式
%[x,y,z] = meshgrid(-10:.2:10,-10:.2:10,-10:.2:10);
%v = f(x, y, z);
%h = patch(isosurface(x, y, z, v, 0)); 
%isonormals(x, y, z, v, h)              
%set(h, 'FaceColor', 'r', 'EdgeColor', 'none');
%xlabel('x');
%ylabel('y');
%zlabel('z'); 
%alpha(1)   
%grid on;
%view([1,1,1]);
%axis equal;
%camlight;
%lighting gouraud

% test | sigmod(x) | <= | x | begin

%x = -10:0.01:10;
%y = 1 ./ (1.+ exp(-x));
%y = abs(y) - abs(x);
%plot(x, y)
%pause;

% result
% | sigmod(x) | <= | x | almost succ, end

% test | sigmod(x + y) | <= | sigmod(x) | + | sigmod(y) | begin

%x1 = [-100 : 0.1 : 100]';
%y1 = [-100 : 0.1 : 100]';
%[x, y] = meshgrid(x1, y1);
%z = abs(1 ./ (1 + exp(-(x + y)))) - abs(1 ./ (1 + exp(-x))) - abs(1./ (1 + exp(-y)));
%mesh(x, y, z)
%pause;

%result
% | sigmod(x + y) | <= | sigmod(x) | + | sigmod(y) | succ, end

% test | sigmod(x) - sigmod(y) | <= | sigmod(x - y) | begin

%x1 = [-100 : 0.1 : 100]';
%y1 = [-100 : 0.1 : 100]';
%[x, y] = meshgrid(x1, y1);
%z = abs(1 ./ (1 + exp(-x)) - 1./ (1 + exp(-y))) - abs(1 ./ (1 + exp(-(x - y))));
%mesh(x, y, z)
%pause;

%result
% | sigmod(x) - sigmod(y) | <= | sigmod(x - y) | almost succ, end

% test sigmod curve status begin

x = [-10 : 0.1 : 10];

w = 0.01;
y = 1 ./ (1 .+ exp(w * x));
plot(x, y, 'r');
hold on;

w = 0.1;
y = 1 ./ (1 .+ exp(w * x));
plot(x, y, 'g');
hold on;

w = 5;
y = 1 ./ (1 .+ exp(w * x));
plot(x, y, 'y');
hold on;


w = 100;
y = 1 ./ (1 .+ exp(w * x));
plot(x, y, 'b');
hold on;

pause;

% test sigmod curve status end

