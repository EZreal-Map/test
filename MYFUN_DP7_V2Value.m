function [Value] = MYFUN_DP7_V2Value(V,I,Pxt)
V_num=length(V);
Q=V(1:end-1)+I-V(2:end);
Value=0;
for i=1:V_num-1
    Value=Value+MYFUN_DP6(Q(i),Pxt(i));
end
end

