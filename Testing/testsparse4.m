function [ marks, error ] = testsparse4(  )
%Fourth test of the Sparse function to test the use of matrices that are
%not all the same dimensions but are still compatible
error = [];
marks = 0;
try
    index=[1,4,5];
    b=[0;1];
    b(:,:,2)=[4;2];
    b(:,:,3)=[1;2];
    x=[6,6;6,6];
    actualans=[435462;435462];
    testans=Sparse(index,b,x);
    if size(testans,1) ~=2 && size(testans,2) ~=1
        error='Test 4: Answer from code is not a 2x1 matrix';
        fprintf('%s\n',error);   
        return;
    end
    if testans ~= actualans
        error='Test 4: Answer is not correct';
        fprintf('%s\n',error);
        return;
    end
    marks = 1;  %so code has passed test 4
catch error
    printError(error);
    error=error.message;
end
end

