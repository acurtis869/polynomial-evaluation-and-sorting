function [ marks, error ] = testsparse2(  )
%Second test of the Sparse function with slightly more complex inputs
error = [];
marks = 0;
try
    index=[1,3,4];
    b=2;
    b(:,:,2)=4;
    b(:,:,3)=-5;
    x=2;
    actualans=-44;
    testans=Sparse(index,b,x);
    if size(testans,1) ~=1 && size(testans,2) ~=1
        error='Test 2: Answer from code is not a 1x1 matrix';
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

