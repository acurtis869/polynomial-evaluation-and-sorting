function [ out ] = myIsort( in )
%MYISORT sorts a row vector into increasing order with <
% J.H.Davenport 19/10/2015; Insertion sort
n=length(in);
out=in;
for k=2:n      % One element is already sorted
    x=out(k);  % the object we are trying to insert
    j=k-1;
    while j>0 && out(j)>x  % Need && since out(0) is illegal
        out(j+1)=out(j);  % move element up
        j=j-1;
    end
    out(j+1)=x;   % x>a(j), so > all a(i), i<j
end
end

