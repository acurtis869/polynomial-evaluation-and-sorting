function [G] = Find(k,F)
%Function to find the location of an element in a matrix
var=0;
it=1;
Flength=length(F);
for i=1:Flength
    if F(1,i) == k
        G(1,it)=i;
        it=it+1;
        var=1;
    end
end
if var==0
    error('element was not a part of the matrix');
end

end

