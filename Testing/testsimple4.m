function [ marks, error ] = testsimple4(  )
%Fourth test of the simple function tests if incompatible inputs give an
%error
error = [];
marks = 0;
try
    a=[1,2;3,4];
    a(:,:,2)=[1,3;5,2];
    x=[1,2,3;4,5,6];
    testans=Simple(a,x);
    marks = 0;  %so code has passed test 4 even though it should not
    error='Test 4: code did not have incompatible matrix error';
catch error
    marks = 1; %this means code has had an error like it should
    error=error.message;
end
end