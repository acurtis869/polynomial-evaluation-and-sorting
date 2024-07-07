function [X] = myexpt(A,n)
if n==0
    X=eye(size(A));
elseif n<0
    error('input must be non-negative');
elseif n==2*floor(n/2)
    X=(A*A)^(n/2);
else
    X=A*(A*A)^((n-1)/2);
end

