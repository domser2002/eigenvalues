function test4
% Autor: Dominik_Seredyn_320732
more on
disp("This test shows how many iterations the method needs depending on" + ...
    " eigenvalues of matrix A")

l=5;
lambda1=zeros(l,1);
lambda2=zeros(l,1);
iterations=zeros(l,1);
i=1;

disp("A=[2,2;0,1]")
disp("Eigenvalues are 2 1")
A=[2,2;0,1];
[E,~,k]=P2Z33_DSE_eigenvalues(A);
disp(strcat("Function returned",rescat(E),' after ',rescat(k),' iterations'));
lambda1(i)=2;
lambda2(i)=1;
iterations(i)=k;
i=i+1;

disp("A=[5,2;0,1]")
disp("Correct result is 5 1")
A=[5,2;0,1];
[E,~,k]=P2Z33_DSE_eigenvalues(A);
disp(strcat("Function returned",rescat(E),' after ',rescat(k),' iterations'));
lambda1(i)=5;
lambda2(i)=1;
iterations(i)=k;
i=i+1;

disp("A=[50,2;0,1]")
disp("Correct result is 50 1")
A=[50,2;0,1];
[E,~,k]=P2Z33_DSE_eigenvalues(A);
disp(strcat("Function returned",rescat(E),' after ',rescat(k),' iterations'));
lambda1(i)=50;
lambda2(i)=1;
iterations(i)=k;
i=i+1;

disp("A=[500,2;0,1]")
disp("Correct result is 500 1")
A=[500,2;0,1];
[E,~,k]=P2Z33_DSE_eigenvalues(A);
disp(strcat("Function returned",rescat(E),' after ',rescat(k),' iterations'));
lambda1(i)=500;
lambda2(i)=1;
iterations(i)=k;
i=i+1;

disp("A=[5000,2;0,1]")
disp("Correct result is 5000 1")
A=[5000,2;0,1];
[E,~,k]=P2Z33_DSE_eigenvalues(A);
disp(strcat("Function returned",rescat(E),' after ',rescat(k),' iterations'));
lambda1(i)=5000;
lambda2(i)=1;
iterations(i)=k;

T=table(lambda1,lambda2,iterations);
disp(T)
end

