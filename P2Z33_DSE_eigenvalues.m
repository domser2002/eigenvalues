function [E,err,k] = P2Z33_DSE_eigenvalues(A,tol,kmax)
% Autor: Dominik_Seredyn_320732
% Project 2, task 33
%
% [E,err,k,x0]=P2Z33_DSE_eigenvalues(A,kmax) numerically approximates 
% eigenvalues of matrix A using power method with standarization and 
% deflation with Gaussian elimination matrix.
% Arguments:
% A - square matrix with real values, A must have n real eigenvalues
% E(1),..,E(n) and there exists s such that E(1)>...>E(s)=E(s+1)=...=E(n)
% tol (optional) - error tolerance, by default 1e-6,
% kmax (optional) - max number of iterations, by defaut 500.
% Return values:
% E - vector of eigenvalues of matrix A which were possible to find,
% err - vector of errors after all iterations,
% k - vector of numbers of iterations performed.
arguments
    A
    tol=1e-6;
    kmax=500;
end

n=size(A,1);
% initialize variables
x0=rand(n,1);
lambda=zeros(1,n);
err=zeros(1,n);
k=ones(1,n);
i=1;
x=x0;
m=n;
s=0;
while i<=n
    while k(i)<kmax
        % new approximation of eigenvector
        xNew = A*x;
        % new approximation of eigenvalue
        lambdaNew=x'*xNew;
        % error and stop condition
        err(i) = abs((lambda(i) - lambdaNew)/lambdaNew);
        if err(i)<tol
            break;
        end
        % update variables
        lambda(i) = lambdaNew;
        x = xNew/norm(xNew,2);
        k(i) = k(i) + 1;
    end
    % check if found the same eigenvalue again
    if i>2
        if lambda(i)-lambda(i-1)<tol
            s = s - 1;
            break;
        end
    end
    s = s + 1;
    % deflate matrix A
    A=deflate(A,m,x);
    % reset variables
    x = x0(2:m);
    m = m - 1;
    i = i + 1;
end
% reduce size of returned variables
E=lambda(1:s);
k=k(1:s);
err=err(1:s);
end

