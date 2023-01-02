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
    kmax=100;
end
%warning('off', 'all')
m=max(max(A));
x0=m*rand(size(A,1),1);
lambda=m*rand(size(A,1),1);
err=1;
k=0;
while k<kmax
    if err<tol
        break;
    end
    % Compute the new approximation of the eigenvector
    y = A*x0;
    % Compute the new approximation of the eigenvalue
    lambdaNew = (y'*x0)/(x0'*x0);
    % Compute the error between the old and new approximations of the eigenvalue
    err = abs(lambda - lambdaNew);
    % Update the variables
    lambda = lambdaNew;
    x0 = y/norm(y);
    k=k+1;
end
E=lambda;
end

