index1=input('Input the first number: ');
index2=input('Input the second number: ');
n=input('Input the total number of elements: ');

f = zeros(n,1);
f(1) = index1;
f(2) = index2;

for k = 3:n
    f(k) = f(k-1) + f(k-2);
end

ratio = f(3:end)./f(2:end-1);
polarplot(1:n,f)
ratio