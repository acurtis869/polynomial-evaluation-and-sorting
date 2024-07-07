function [out] = Unsorted(index,b,x)
%function that works out value polynomials using the sparse version of 
%Horner's Rule with unsorted values in index
k=length(index);
indexsort=myIsort(index);
if k~=size(b,3) %quick check for errors
    error('Number of coefficients does not match the length of the index');
elseif size(index,1)~=1
    error('index must be a row vector');
else %begins main part of the code
    for i=1:k %This part rearranges the 3D array so that the coefficients match up with their powers
        F=Find(index(1,i),indexsort); %Find is a function I made to help with this
        c(:,:,F(1,1))=b(:,:,i);
    end
    out=c(:,:,k); %starts the process of calculating the polynomial
    for i=k:-1:1
        if i==1
            out=myexpt(x,indexsort(1))*out;
        else
            out = myexpt(x,(indexsort(i)-indexsort(i-1)))*out;
            out = c(:,:,i-1)+out;
        end
    end

end
end

