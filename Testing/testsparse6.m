function [ marks, error ] = testsparse6(  )
%Sixth test of the sparse function tests if the program gives an
%error for incompatible matrices
error = [];
marks = 0;
try
    index=[1,11,200];
    b=[8,8;11,11];
    b(:,:,2)=[7,7;12,12];
    b(:,:,3)=[0,0;0,0];
    x=[1,0,1;0,1,0;1,0,1];
    testans=Sparse(index,b,x);
    marks = 0;  %so code has passed test 6 even though it should not
    error='Test 6: code did not have matrix compatibility error';
catch error
    marks = 1; %this means code has had an error like it should
    error=error.message;
end
end