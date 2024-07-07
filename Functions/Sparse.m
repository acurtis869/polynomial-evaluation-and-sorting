function [out] = Sparse(index,b,x)
%function that works out value polynomials using the sparse version of 
%Horner's Rule
k=length(index);
if k~=size(b,3) %checks for errors
    error('Number of coefficients does not match the length of the index');
elseif size(index,1)~=1
    error('index must be a row vector');
else
    out=b(:,:,k); %begins the process of calculating the polynomial
    for i=k:-1:1
        if i==1
            out=myexpt(x,index(1))*out;
        else
            out = myexpt(x,(index(i)-index(i-1)))*out;
            out = b(:,:,i-1)+out;
        end
    end

end
end

