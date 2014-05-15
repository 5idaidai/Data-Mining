%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 随机生成质心函数（最小值和最大值之间）
% 作者：梁军
% 日期：2014/5/14
% 数据挖掘第一次作业，为K-Means算法选择初始质心
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function centroids = randCent(dataSet, k)

    centroids = zeros(k, 1);
    minJ = min(dataSet);
    rangeJ = max(dataSet) - minJ;
    for i = 1:k
       centroids(i,1) =  minJ + rangeJ * rand(1);
    end
 
end