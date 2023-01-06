function test1
%Autor: Dominik_Seredyn_320732

format long
%more on

disp("This test will show that the method is implemented correctly")
disp("It calls a function with default error tolerance and max number " + ...
    "of iterations")
disp("It displays result and error returned by function")

disp("A=[3,2;4,1]")
disp("Correct result is 5 -1")
A=[3,2;4,1];
[E,err]=P2Z33_DSE_eigenvalues(A);
disp(strcat("Function returned ",rescat(E)));
disp(strcat("Error is ",num2str(err)));

disp("A=[1,2,3;3,2,1;2,1,3]")
disp("Correct result is 6 1.41.. -1.41..")
A=[1,2,3;3,2,1;2,1,3];
[E,err]=P2Z33_DSE_eigenvalues(A);
disp(strcat("Function returned ",rescat(E)));
disp(strcat("Error is ",num2str(err)));

disp(' ')
disp("A=[1,0,0;0,1,0;0,0,1]")
disp("Correct result is 1")
A=[1,0,0;0,1,0;0,0,1];
[E,err]=P2Z33_DSE_eigenvalues(A);
disp(strcat("Function returned ",rescat(E)));
disp(strcat("Error is ",num2str(err)));

% disp(' ')
% disp("A=[1,0,0,0.5,1;0,1,0,0.2,1;0,0,1,0.3,1;0.111,0.23,0.4,0.001;0,0,0,0,1]")
% disp("Correct result is 1.187 1 -0.186")
% A=[1,0,0,0.5,1;0,1,0,0.2,1;0,0,1,0.3,1;0.111,0.23,0.4,0.001,1;0,0,0,0,1];
% [E,err]=P2Z33_DSE_eigenvalues(A);
% disp(strcat("Function returned ",num2str(E)));
% disp(strcat("Error is ",num2str(err)));

end