function [V] = MYFUN_DP7(V0,V2,I,Pxt1,Pxt2)
V1=V0+I;
storage=zeros(V1,1);
for i=1:V1
    storage(i)=MYFUN_DP6(V1-i,Pxt1)+MYFUN_DP6(i+I-V2,Pxt2);
    [~,V]=min(storage);
end

