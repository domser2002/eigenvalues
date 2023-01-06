function A = deflate(A,m,x)
% Autor: Domnik_Seredyn_320732
% A=deflate(A,m,x) deflates matrix A using Gaussian eliminattion matrix
for i=2:m
    A(i,:)=A(i,:)-(x(i)/x(1)).*A(1,:);
end
% no need to multiply by P^(-1) - it does not change values we return
A=A(2:m,2:m);
end

