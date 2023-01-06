function test2
%Autor: Dominik_Seredyn_320732

format long
more on

disp("This test is meant to show how fast the function is")
disp("It also shows that the function does not crush for too big matrixes")
disp("It uses random nxn matrixes")

A=rand(10);
disp("For 10x10 matrix:")
tic;
[~]=P2Z33_DSE_eigenvalues(A);
t=toc;
disp(strcat("Function worked for ",num2str(t)," seconds"))

disp(' ')
A=rand(100);
disp("For 100x100 matrix:")
tic;
[~]=P2Z33_DSE_eigenvalues(A);
t=toc;
disp(strcat("Function worked for ",num2str(t)," seconds"))

disp(' ')
A=rand(300);
disp("For 300x300 matrix:")
tic;
[~]=P2Z33_DSE_eigenvalues(A);
t=toc;
disp(strcat("Function worked for ",num2str(t)," seconds"))

disp(' ')
A=rand(500);
disp("For 500x500 matrix:")
tic;
[~]=P2Z33_DSE_eigenvalues(A);
t=toc;
disp(strcat("Function worked for ",num2str(t)," seconds"))

disp(' ')
A=rand(1000);
disp("For 1000x1000 matrix:")
tic;
[~]=P2Z33_DSE_eigenvalues(A);
t=toc;
disp(strcat("Function worked for ",num2str(t)," seconds"))
end