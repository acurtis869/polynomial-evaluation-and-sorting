function [out] = Simple(a,x)
%function that works out values for polynomials using Horner's Rule
n=size(a,3);
out=a(:,:,n); %begins the process of calculating the polynomial
for i=(n-1):-1:1 
    out=x*out;
    out=a(:,:,i)+out;
end
end

