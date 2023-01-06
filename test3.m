function test3
%Autor: Dominik_Seredyn_320732

disp("This is a numeric and implementation test")
disp("It plots approximate computational complexity of the function")
k=150;
n=1:k;
t=zeros([k 1]);
for i=1:k
    A=rand(i);
    tic;
    P2Z33_DSE_eigenvalues(A);
    t(i)=toc;
end
plot(n,t);
xlabel("n")
ylabel("O(n)")
end

