function test2
%Autor: Dominik_Seredyn_320732

format long
more on

disp("This test is meant to show how fast the function is.")
disp("It also shows that the function does not crush for too big matrixes.")
disp("It uses random nxn matrixes.")

matrix_size=[10 ;100 ;300 ;500 ;1000 ;3000];
t=zeros(6,1);
t=string(t);
i=1;

A=rand(10);
tic;
[~]=P2Z33_DSE_eigenvalues(A);
S=strcat(num2str(toc),"s");
t(i)=S;
i=i+1;

A=rand(100);
tic;
[~]=P2Z33_DSE_eigenvalues(A);
S=strcat(num2str(toc),"s");
t(i)=S;
i=i+1;

A=rand(300);
tic;
[~]=P2Z33_DSE_eigenvalues(A);
S=strcat(num2str(toc),"s");
t(i)=S;
i=i+1;

A=rand(500);
tic;
[~]=P2Z33_DSE_eigenvalues(A);
S=strcat(num2str(toc),"s");
t(i)=S;
i=i+1;

A=rand(1000);
tic;
[~]=P2Z33_DSE_eigenvalues(A);
S=strcat(num2str(toc),"s");
t(i)=S;
i=i+1;

A=rand(3000);
tic;
[~]=P2Z33_DSE_eigenvalues(A);
S=strcat(num2str(toc),"s");
t(i)=S;

T=table(matrix_size,t);
disp(T);
end