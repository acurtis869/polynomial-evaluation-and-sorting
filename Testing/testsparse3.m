function [ marks, error ] = testsparse3(  )
%Third test of the Sparse function to test the use of matrices
error = [];
marks = 0;
try
    index=[2,3,6];
    b=[2,2;2,2];
    b(:,:,2)=[1,-3;5,7];
    b(:,:,3)=[1,0;0,1];
    x=[1,2;3,4];
    actualans=[6084,8671;13300,18955];
    testans=Sparse(index,b,x);
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

