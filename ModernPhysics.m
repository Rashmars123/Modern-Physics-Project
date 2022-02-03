Lx = 100; 
Ly = 100; 
v = 25; 


x = [-3: 1: 3]; 
y = [-3: 1: 2]; 
[xx,yy] = meshgrid(x, y); 

figure
surf(xx, yy, S);

function [c] = freq (n,m)
a = (n * pi/L1).^2;
b = (m * pi/L2).^2;

c = v * sqrt(a + b); 
end 

function [] = S(x,y,t) 

for n = 1: 1: 20 
    for m = 1: 1: 20 
        sin((n*pi*x)/Lx) * sin((m*pi*y)/Ly) * cos(freq(n,m) * t)
        
    end
end
end



