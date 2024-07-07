function [ marks,total ] = TestSimple(  )
%TestSimple tests that the fuction Simple.m is working correctly
%   The function will call on different subfunctions to test whether
%   various requirements are being met
marks = 0;
total = 0;
f=fopen(strcat('testsimple',num2str(total+1),'.m'));
while f>1
    total=total+1;
    fclose(f);
    fhandle = str2func(strcat('testsimple',num2str(total)));
    [m,e]=fhandle();
    marks = marks + m;
    if m==0
        if size(e,1)>0
                fprintf('testsimple%d gave the following error: %s\n',total,e);
            else
                fprintf('testsimple%d did not work but gave no error',total);
        end
    end
f=fopen(strcat('testsimple',num2str(total+1),'.m'));
end
end

