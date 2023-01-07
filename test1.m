function test1
%Autor: Dominik_Seredyn_320732

format long
more on

disp("This test will show that the method is implemented correctly")
disp("It calls a function with default error tolerance and max number " + ...
    "of iterations")
disp("It displays result and error returned by function")

disp("A=[3,2;4,1]")
correct=[5; -1];
A=[3,2;4,1];
[returned,error]=P2Z33_DSE_eigenvalues(A);
returned=returned';
error=error';
T=table(correct,returned,error);
disp(T)

disp(' ')
disp("A=[1,0,0;0,1,0;0,0,1]")
correct=1;
A=[1,0,0;0,1,0;0,0,1];
[returned,error]=P2Z33_DSE_eigenvalues(A);
returned=returned';
error=error';
T=table(correct,returned,error);
disp(T)

disp(' ')
disp("A=[3,1,-1;2,3,-2;1,2,-3]")
correct=[3.747;-2.201;1.455];
A=[3,1,-1;2,3,-2;1,2,-3];
[returned,error]=P2Z33_DSE_eigenvalues(A);
returned=returned';
error=error';
T=table(correct,returned,error);
disp(T)

end