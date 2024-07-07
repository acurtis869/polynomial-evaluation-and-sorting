function [ marks, error ] = testsparse1(  )
%First test of the Sparse function for very basic inputs
error = [];
marks = 0;
try
    index=[1];
    b=2;
    x=3;
    actualans=6;
    testans=Sparse(index,b,x);
    if size(testans,1) ~=1 && size(testans,2) ~=1
        error='Test 1: Answer from code is not a 1x1 matrix';
        fprintf('%s\n',error);   
        return;
    end
    if testans ~= actualans
        error='Test 1: Answer is not correct';
        fprintf('%s\n',error);
        return;
    end
    marks = 1;  %so code has passed test 1
catch error
    printError(error);
    error=error.message;
end
end

