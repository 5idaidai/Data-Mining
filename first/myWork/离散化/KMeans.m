%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% K-均值聚类算法
% 作者：梁军
% 日期：2014/5/15
% 数据挖掘第一次作业，连续数据离散化分类
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [centroids,clusterAssment] = KMeans(dataSet,k)

    % 簇分配结果矩阵，第一列记录簇索引值，第二列存储误差
    clusterAssment = zeros(size(dataSet, 1), 2);
    % 随机生成k个质心
    centroids = randCent(dataSet, k);
    % 标识变量，当clusterChanged为1时继续迭代
    clusterChanged = 1;
    
    while clusterChanged
       
        % 设置标识变量为0，停止迭代
       clusterChanged = 0;
       
       %% 为每个点寻找最近的质心
       for i = 1:size(dataSet, 1)
           
           % 设置初始距离为无穷大，质心索引为-1
          minDist = inf;
          minIndex = -1;
          
          % 计算出每个质心到数据集中某个点的欧氏距离
          for j = 1:k
             distJI = distEclud(centroids(j),dataSet(i));
             if distJI < minDist
                minDist = distJI;
                minIndex = j;
             end
          end
          
          % 如果当前数据点中记录的所属质心不是距离最小的质心，继续迭代，更新质心位置
          if ~(clusterAssment(i, 1)==minIndex)
              clusterChanged = 1;
          end
          clusterAssment(i,:) = [minIndex,minDist^2];
       end
       
       %% 更新质心的位置
       for cent = 1:k           
           disp(cent);
           ptsInClust = dataSet(clusterAssment(:,1)==cent);
           centroids(cent) = mean(ptsInClust);
       end
    end    

end