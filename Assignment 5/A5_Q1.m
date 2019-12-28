A=input('Enter a 3x3 matrix: ');
syms k x y z 
ki=[k 0 0; 0 k 0; 0 0 k];
A_ki=A-ki;
a=A_ki(1,1); b=A_ki(1,2); c=A_ki(1,3); d=A_ki(2,2); e=A_ki(3,2); f=A_ki(3,3);
detA_ki=(a*d*f)+(b*e*c)+(c*b*e)-(c*d*c)-(e*e*a)-(f*b*b);
r=roots(sym2poly(detA_ki));
root1=double(r(1));
root2=double(r(2));
root3=double(r(3));
fprintf('The eigenvalues for this matrix are: \n')
disp(root1)
disp(root2)
disp(root3)
eig1=[root1 0 0; 0 root1 0; 0 0 root1];
eig2=[root2 0 0; 0 root2 0; 0 0 root2];
eig3=[root3 0 0; 0 root3 0; 0 0 root3];
fprintf('The eigenvectors are obtained by solving the following matrices and equating them to a 3x1 zero matrix\n')
A_eig1=A-eig1
A_eig2=A-eig2
A_eig3=A-eig3

