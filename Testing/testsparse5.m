function [ marks, error ] = testsparse5(  )
%Fifth test of the Sparse function tests if the program has an error for
%the number of coefficients being different to the length of index
error = [];
marks = 0;
try
    index=[1,3,5];
    b=[1,2;3,4];
    b(:,:,2)=[2,2;2,2];
    x=[1,0;0,1];
    testans=Sparse(index,b,x);
    marks = 0;  %so code has passed test 5 even though it should not
    error='Test 5: code did not have matrix size error';
catch error
    marks = 1; %this means code has had an error like it should
    error=error.message;
end
end