function [ marks, error ] = testsimple2(  )
%Second test of the simple function for a 2x2 matrix with only power 0
error = [];
marks = 0;
try
    a=[1,2;3,4];
    x=1;
    actualans=[1,2;3,4];
    testans=Simple(a,x);
    if size(testans,1) ~=2 && size(testans,2) ~=2
        error='Test 2: Answer from code is not a 2x2 matrix';
        fprintf('%s\n',error);   
        return;
    end
    if testans ~= actualans
        error='Test 2: Answer is not correct';
        fprintf('%s\n',error);
        return;
    end
    marks = 1;  %so code has passed test 2
catch error
    printError(error);
    error=error.message;
end
end