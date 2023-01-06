function S = rescat(E)
%RESCAT Summary of this function goes here
%   Detailed explanation goes here
n=length(E);
S='';
for i=1:n
    S=strcat(S," ",num2str(E(i)));
end
end

