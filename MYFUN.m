function [Generator_load] = MYFUN(x,step_size,row,col,choose)
%x：（余下）需要分配的负荷 x kw
%step_size：发电机N_Q关系中离散化的步长
%row：choose的行数，一般是最后一行
%col：choose的列数，一般是最后一列

%注意1：一般情况下，row，col是最后一行和最后一列
...元素开始计算路径road
    %注意2：结果输出的是反向的，先输出的是最后一台机
...组分配的负荷,以此类推。
    %注意3：少数情况下涉及满足最优解有多种分配情况下的
...信息展示为前 n 行为一种完整方案，n+1 到 2*n 行
    ...为第二最优解种方案 （n为台数）
    temp=choose(row,col);
if row==2
    Generator_load=str2num(choose(row,col))
else
    for i=str2num(temp)
        Generator_load=i
        x=x-i;
        col=x/step_size+1;
        row=row-2;
        Generator_load=MYFUN(x,step_size,row,col,choose);
        %递归使用方法复杂，目前测试过同时有2种最优解方
        ...案能正确的运行
        row=row+2;
    end
end

