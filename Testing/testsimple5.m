function [ marks, error ] = testsimple5(  )
%Fifth and final test of the simple function tests for a considerably more
%complex input
error = [];
marks = 0;
try
    a=[1,2,3;4,5,6];
    a(:,:,2)=[2,3,5.5;7.5,-11,13];
    a(:,:,3)=[1+1i,2,3;-1i,5,6];
    x=[1,1;1,1];
    actualans=[12.5,8,39.5;15.5,11,42.5];
    testans=Simple(a,x);
    if size(testans,1) ~=2 && size(testans,2) ~=3
        error='Test 5: Answer from code is not a 2x3 matrix';
        fprintf('%s\n',error);   
        return;
    end
   if testans ~= actualans
        error='Test 5: Answer is not correct';
        fprintf('%s\n',error);
        return;
    end
    marks = 1;  %so code has passed test 5
catch error
    printError(error);
    error=error.message;
end
end