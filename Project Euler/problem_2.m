%Problem 2
%Each new term in the Fibonacci sequence is generated by adding the previous two terms. 
%By starting with 1 and 2, the first 10 terms will be: 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
%By considering the terms in the Fibonacci sequence whose values do not exceed four million, 
%find the sum of the even-valued terms.

clear
clc
lim = 4000000;
z = zeros(lim,1);
c =0;
for i=1:lim
    z(i,1) = c+1;
    c = c+1;
end

% x = zeros(10,1);
% v = zeros(10,1);
v(1,1) = 1;
v(2,1) =1;


for i = 3:lim
    v(i,1) = v(i-1,1)+ v(i-2,1);
    if v(i,1) > lim
        break
    end
    for j = 1:lim
    if v(i,1)/2 == z(j,1)
        x(i) = v(i,1);
    end
    end
end

s = sum(x);
disp('Sum = ');
disp(s);