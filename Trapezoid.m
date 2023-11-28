func = @(x)1/x;

% Define the integration limits
a = 1;  % Lower limit
b = 2;  % Upper limit

% Define the number of subintervals (trapezoids)
n = 10;

% Calculate the width of each subinterval
delx = (b - a) / n;

% Initialize the result
sum = 0;

% Sum up the areas of the trapezoids
for i = 0:n
    x1 = a + i * delx;
    x2 = func(x1);
    if(i == 0 || i == n)
        sum = sum + x2;
    else
        sum = sum + 2 * x2;
    end
end

% Multiply by delx/2 to complete the trapezoidal rule
result = delx / 2 * sum;

disp(result);