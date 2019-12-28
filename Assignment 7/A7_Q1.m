V=3:4:133;
M=[0 2 0; 8 0 3; 0 0 5];
A=find((M>0 & M<5));
M(A)=M(A)+3
B=find(mod(V,7)==0);
V(B)=V(B)+2
V7=V(arrayfun(@(n) all(num2str(n)-'0' ~= 7), V)); %finds all the numbers without the 7 in them
C=setdiff(V,V7) %compares that to V and displays the elements that are differing
v2=zeros(1,29);
n=input('Enter the two numbers at the start of vector v1 in the form [a,b]: ');
v1=zeros(1,30);
v1(1)=n(1);
v1(2)=n(2);
differ=n(2)-n(1);
v1=v1+n(2):differ:((28*differ)+n(2))
v2(1:27)=v1(1:27)+v1(2:28)