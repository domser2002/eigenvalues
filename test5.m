function test5
% Autor: Dominik_Seredyn_320732
disp("This test shows how the error of the method depends on " + ...
    "matrix A")
disp("It performs only 3 iterations to illustrate this effect better")

disp("A=[2,2;0,1]")
disp("Correct result is 2 1")
A=[2,2;0,1];
avg=0;
for j=1:100
    [~,err]=P2Z33_DSE_eigenvalues(A,1e-6,3);
    avg=avg+err(1);
end
avg=avg/100;
disp(strcat("Average error is ",num2str(avg)));

disp("A=[5,2;0,1]")
disp("Correct result is 5 1")
A=[5,2;0,1];
avg=0;
for j=1:100
    [~,err]=P2Z33_DSE_eigenvalues(A,1e-6,3);
    avg=avg+err(1);
end
avg=avg/100;
disp(strcat("Average error is ",num2str(avg)));

disp("A=[50,2;0,1]")
disp("Correct result is 50 1")
A=[50,2;0,1];
avg=0;
for j=1:100
    [~,err]=P2Z33_DSE_eigenvalues(A,1e-6,3);
    avg=avg+err(1);
end
avg=avg/100;
disp(strcat("Average error is ",num2str(avg)));

disp("A=[500,2;0,1]")
disp("Correct result is 500 1")
A=[500,2;0,1];
avg=0;
for j=1:100
    [~,err]=P2Z33_DSE_eigenvalues(A,1e-6,3);
    avg=avg+err(1);
end
avg=avg/100;
disp(strcat("Average error is ",num2str(avg)));

disp("A=[5000,2;0,1]")
disp("Correct result is 5000 1")
A=[5000,2;0,1];
avg=0;
for j=1:100
    [~,err]=P2Z33_DSE_eigenvalues(A,1e-6,3);
    avg=avg+err(1);
end
avg=avg/100;
disp(strcat("Average error is ",num2str(avg)));
end

