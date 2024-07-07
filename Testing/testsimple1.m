function [ marks, error ] = testsimple1(  )
%First test of the simple function for 1 dimensional arrays
error = [];
marks = 0;
try
    a=2;
    x=3;
    actualans=2;
    testans=Simple(a,x);
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

