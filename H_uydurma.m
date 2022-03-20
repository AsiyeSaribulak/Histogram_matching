function Histogram = H_uydurma(x,y)
M=zeros(256,1,'uint8');
res1=imhist(x);
res2=imhist(y);
cdf1=cumsum(res1)/numel(x);
cdf2=cumsum(res2)/numel(y);
for i=1:256
    [~,ind]=min(abs(cdf1(i)-cdf2));
    M(i)= ind-1;
end
[H,W]=size(x);
Histogram=zeros(H,W,'uint8');
for j= 1:H
    for k = 1:W
        Histogram(j,k)=M(double(x(j,k)+1));
    end
end

end
