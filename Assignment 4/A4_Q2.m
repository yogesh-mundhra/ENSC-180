%this function takes two matrices as input and checks
function A4_Q2(A,B)
[rowA,colA]=size(A);
[rowB,colB]=size(B);
add=zeros;
mult=zeros;
if colA==rowB
    for i=1:rowA
        for j=1:colB
        mult(i,j)=0;
        row=A(i,:);
        column=B(:,j);
        for index=1:colA
            mult(i,j)=mult(i,j)+row(index).*column(index);
        end
        end
    end
    fprintf('The matrix obtained by multiplying the 2 matrices is\n')
    disp(mult)
else
    fprintf('These matrices can not be multiplied as the # of columns in the 1st matrix is not equal to the # of rows in the second matrix\n');
end
if(size(A)==size(B))
       for i=1:rowA
           for j=1:colB
               add(i,j)=A(i,j)+B(i,j);
           end
       end
       fprintf('The matrix obtained by adding the 2 matrices is\n')
       disp(add)
else
        fprintf('These matrices are not the same size therefore cannot be added\n');
end
end