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
% E - vector of eigenvalues of matrix A,
% err - error after all iterations,
% k - number of iterations performed,
% x0 - initial approximation.
m=max(max(A));
x0=m*rand(size(A,1),1);
E=[0,0];
err=0;
k=0;
end

