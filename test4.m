function test4
% Autor: Dominik_Seredyn_320732
disp("This test shows how fast the method converges depending on matrix A")

disp("A=[2,2;0,1]")
disp("Correct result is 2 1")
A=[2,2;0,1];
[E,~,k]=P2Z33_DSE_eigenvalues(A);
disp(strcat("Function returned ",rescat(E),' after ',rescat(k),' iterations'));

disp("A=[5,2;0,1]")
disp("Correct result is 5 1")
A=[5,2;0,1];
[E,~,k]=P2Z33_DSE_eigenvalues(A);
disp(strcat("Function returned ",rescat(E),' after ',rescat(k),' iterations'));

disp("A=[50,2;0,1]")
disp("Correct result is 50 1")
A=[50,2;0,1];
[E,~,k]=P2Z33_DSE_eigenvalues(A);
disp(strcat("Function returned ",rescat(E),' after ',rescat(k),' iterations'));

disp("A=[500,2;0,1]")
disp("Correct result is 500 1")
A=[500,2;0,1];
[E,~,k]=P2Z33_DSE_eigenvalues(A);
disp(strcat("Function returned ",rescat(E),' after ',rescat(k),' iterations'));

disp("A=[5000,2;0,1]")
disp("Correct result is 5000 1")
A=[5000,2;0,1];
[E,~,k]=P2Z33_DSE_eigenvalues(A);
disp(strcat("Function returned ",rescat(E),' after ',rescat(k),' iterations'));
end

