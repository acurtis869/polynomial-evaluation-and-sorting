function [ marks, error ] = testsimple3(  )
%Third test of the simple function for a 2x2 matrix with a higher power
%than 0
error = [];
marks = 0;
try
    a=[1,2;3,4];
    a(:,:,2)=[2,3;4,5];
    a(:,:,3)=[3,4;5,6];
    x=[2,0;0,2];
    actualans=[17,24;31,38];
    testans=Simple(a,x);
    if size(testans,1) ~=2 && size(testans,2) ~=2
        error='Test 3: Answer from code is not a 2x2 matrix';
        fprintf('%s\n',error);   
        return;
    end
    if testans ~= actualans
        error='Test 3: Answer is not correct';
        fprintf('%s\n',error);
        return;
    end
    marks = 1;  %so code has passed test 3
catch error
    printError(error);
    error=error.message;
end
end