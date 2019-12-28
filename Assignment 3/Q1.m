function [] = Q1()
r = input('Enter the radius of the sphere in (mm): ');
ps = input('Enter the average density of the sphere in (g/mm): ');
p0= input('Enter the density of the liquid in (g/mm): ');
h=0:0.1:2*r;
volsphere=(4/3)*pi*r^3;
masssphere=volsphere*ps;
volfluid=(pi/3)*((3*r.*h.^2)-(h.^3));
massfluid=volfluid*p0;
y=masssphere-massfluid;
for i=1:500
    if y(i)*y(i+1)<0
        fprintf('The sphere depth below the fluid surface is %f', h(i))
    end
end
end
