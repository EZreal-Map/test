function [B] = MYFUN_DP6(Ps,Pxt)
if Ps>=1 && Ps<=5
    Ph=Pxt-Ps;
else
    B=inf;
    return
end

if Ph>=1 && Ps<=5
    B=Ph^2+10;
else
    B=inf;
    return
end
end

