function [E,err,k,x0] = P2Z33_DSE_eigenvalues(A,tol,kmax)
% Autor: Dominik_Seredyn_320732
% Project 2, task 33
%
% [E,err,k,x0]=P2Z33_DSE_eigenvalues(A,kmax) numerically approximates 
% eigenvalues of matrix A using power method with standarization and 
% deflation with Gaussian elimination matrix.
% Arguments:
% A - square matrix with real values, 
% tol (optional) - error tolerance, by default 1e-6,
% kmax (optional) - max number of iterations, by defaut 100.
% Return values:
% E - vector of eigenvalues of matrix A which were possible to find,
% err - vector of errors after all iterations,
% k - vector of numbers of iterations performed,
% x0 - initial approximation.
arguments
    A
    tol=1e-6;
    kmax=500;
end
%warning('off', 'all')
n=size(A,1);
m=max(max(A));
x0=m*rand(n,1);
lambda=zeros(1,n);
err=ones(1,n);
k=1;
i=1;
x=x0;
m=n;
s=0;
while i<=n
    while k<kmax
        if err(i)<tol
            break;
        end
        % Compute the new approximation of the eigenvector
        y = A*x;
        % Compute the new approximation of the eigenvalue
        lambdaNew = (y'*x)/(x'*x);
        % Compute the error between the old and new approximations of the eigenvalue
        err(i) = abs((lambda(i) - lambdaNew)/lambda(i));
        % Update the variables
        lambda(i) = lambdaNew;
        x = y/norm(y);
        k = k + 1;
    end
%     if err(i)>tol
%         break;
%     end
    if i>2
        if lambda(i)==lambda(i-1)
            s = s - 1;
            break;
        end
    end
    s = s + 1;
    % Deflate the matrix A
    A=deflate(A,m,x);
    % Reset variables
    x = x0(2:m);
    m = m - 1;
    k = 1;
    i = i + 1;
end
E=lambda(1:s);
err=err(1:s);
end

