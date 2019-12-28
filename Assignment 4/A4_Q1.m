A=[4 3 1;3 7 -1; 1 -1 9];
B=[10 8 7; 3 -3 0; 14 1 7];
C=[1 -1; 4 7; 9 5];
fprintf('A+B\n')
disp(A+B)
fprintf('\nA*C=\n')
disp(A*C)
fprintf('\nA''\n')
disp(A')
fprintf('\nA*A''\n')
disp(A*A')
fprintf('\nC*C''\n')
disp(C*C')
fprintf('\nA^-1*B^-1\n')
disp(inv(A)*inv(B))
fprintf('\nRank(A)\n')
disp(rank(A))
fprintf('\nRank(C)\n')
disp(rank(C))
fprintf('\ndeterminant of C\n')
disp(det(A))
fprintf('solving [A]{x}=[C]\n')
disp(A\C)

