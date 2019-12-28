numseeds=1000;
d=[137.51 137.45 137.92]
r=zeros(3,numseeds);
theta=zeros(3,numseeds);
for i=1:3
    for n=1:numseeds
        r(i,n)=n^0.5;
        theta(i,n)=(pi*d(i)*n)/180;
    end
end
plot(r(1,:).*cos(theta(1,:)), r.*sin(theta(1,:)), 'o')
title({['Sunflower head simulation'];['Number of seeds= ' num2str(numseeds)];['d= ' num2str(d(1))]})
xlabel('Position')
ylabel('Angle (rad)')
figure
plot(r(2,:).*cos(theta(2,:)), r.*sin(theta(2,:)), 'o')
title({['Sunflower head simulation'];['Number of seeds= ' num2str(numseeds)];['d= ' num2str(d(2))]})
xlabel('Position')
ylabel('Angle (rad)')
figure
plot(r(3,:).*cos(theta(3,:)), r.*sin(theta(3,:)), 'o')
title({['Sunflower head simulation'];['Number of seeds= ' num2str(numseeds)];['d= ' num2str(d(3))]})
xlabel('Position')
ylabel('Angle (rad)')