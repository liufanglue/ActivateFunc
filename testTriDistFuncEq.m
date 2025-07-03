
% test | triDist(x) | <= | x | begin

%a = 50
%k = 0.2
%x = [-100 : 0.1 : 100];
%y = 0.5 * (tanh(k * (x - a)) - tanh(-k * (x + a)));
%y = abs(y) - abs(x);

%plot(x, y)
%pause;

% result
% | triDist(x) | <= | x | almost succ, end

% test | triDist(x + y) | <= | triDist(x) | + | triDist(y) | begin

%a = 2
%k = 0.2
%x1 = [-100 : 0.1 : 100]';
%y1 = [-100 : 0.1 : 100]';
%[x, y] = meshgrid(x1, y1);
%z = abs(0.5 * (tanh(k * (x + y - a)) - tanh(-k * (x + y + a)))) - abs(0.5 * (tanh(k * (x - a)) - tanh(-k * (x + a)))) - abs(0.5 * (tanh(k * (y - a)) - tanh(-k * (y + a))));
%mesh(x, y, z)
%pause;

%result
% | triDist(x + y) | <= | triDist(x) | + | triDist(y) | almost succ, end

% test | triDist(x + y) | <= | triDist(x) | + | triDist(y) | begin

%a = 2
%k = 0.2
%x1 = [-100 : 0.1 : 100]';
%y1 = [-100 : 0.1 : 100]';
%[x, y] = meshgrid(x1, y1);
%z = abs(0.5 * (tanh(k * (x - a)) - tanh(-k * (x + a))) - 0.5 * (tanh(k * (y - a)) - tanh(-k * (y + a)))) - abs(x - y);
%mesh(x, y, z)
%pause;

%result
% | triDist(x) - triDist(y) | <= | x - y | succ, end

% test triDist curve status begin


%a = 50
%k = 0.2
%x = [-100 : 0.1 : 100];
%y = 0.5 * (tanh(k * (x - a)) - tanh(-k * (x + a)));

%plot(x, y)
%pause;

% test triDist curve status end

