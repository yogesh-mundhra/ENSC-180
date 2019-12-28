x=-1:0.001:1;
legendre=((693.*x.^6)-(945.*x.^4)+(315.*x.^2)-15)./48;
chebyshev=32.*x.^6-48.*x.^4+18.*x.^2-1;
plot(x, chebyshev, 'b')
k=1;
for i=1:2000
    if legendre(i)*legendre(i+1)<0
        fprintf('The root #%d for the Legendre polynomial is %.3f\n',k,i*0.001-1);
        k=k+1;
    end
end
k=1;
for i=1:2000
    if chebyshev(i)*chebyshev(i+1)<0
        fprintf('The root #%d for the Chebyshev polynomial is %.3f\n',k,i*0.00-1);
        k=k+1;
    end
end

