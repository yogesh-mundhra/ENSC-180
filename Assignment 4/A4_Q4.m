A = [4 3 1; 3 7 -1; 1 -1 9];
b = [1 -1; 4 7; 9 5]; %C

[n, n] = size(A);
[n, k] = size(b);
x=zeros(n,k);
for i =1:n-1
    m= -A(i+1:n,i)/A(i,i);
    A(i+1:n,:)=A(i+1:n,:) + m*A(i,:);
    b(i+1:n,:)=b(i+1:n,:) + m*b(i,:);
end

x(n,:)=b(n,:)/A(n,n);
for i=n-1:1:1
    x(i,:)=(b(i,:) -A(i,i+1:n)*x(i+1:n,:))/A(i,i);
end

totalA=sum(A,2);
rankA=0;
for j = 1:n
    if abs(totalA(j)) < 1e-6
    else
        rankA=rankA+1;
    end
end
fprintf('Rank of A: %d\n', rankA)
if rankA == n
    fprintf('The rank is equal to the size of A\n')
elseif rankA < n
    fprintf('The rank is smaller than the size of A\n')
end
nonzeros(1,k)=0;
for s =1:k
    for j = rankA:m
        if abs(b(j,s)) < 1e-6
        else
            nonzeros(s) = nonzeros(s) + 1;
        end
    end
    
    if rankA<n
        if nonzeros(s) ~=0
            fprintf('No solution found\n');
        end
    end
    
    if rankA == n 
        if nonzeros(s) == 0
            fprintf('One solution found\n')
            fprintf('Solution {x} corresponding to Ax=C():%lf)\n', s)
            x(:,s)
        end
    end
    
    if rankA < n
        if nonzeros(s)==0
            fprintf('Infinitely many solutions found')
        end
    end
end

    
   
        