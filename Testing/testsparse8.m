function [ marks, error ] = testsparse8(  )
%Eighth and final test of the Sparse function to test whether the function
%can cope with complex, negative and non-integer inputs
error = [];
marks = 0;
try
    index=[1,3];
    b=[1i,-1;-1i,1];
    b(:,:,2)=[-0.5,0.5;1.5,2.5];
    x=[1,2;3,4];
    actualans=[62.5-1i,154.5;136.5-1i,336.5];
    testans=Sparse(index,b,x);
    if size(testans,1) ~=2 && size(testans,2) ~=2
        error='Test 8: Answer from code is not a 2x2 matrix';
        fprintf('%s\n',error);   
        return;
    end
    if testans ~= actualans
        error='Test 8: Answer is not correct';
        fprintf('%s\n',error);
        return;
    end
    marks = 1;  %so code has passed test 8
catch error
    printError(error);
    error=error.message;
end
end

