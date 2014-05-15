%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 等宽划分
% 作者：梁军
% 日期：2014/5/15
% 数据挖掘第一次作业，连续数据离散化分类
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function clusterAssment = eqWidth(dataSet, k)

   clusterAssment = zeros(size(dataSet,1), 1);
   minJ = min(dataSet);
   maxJ = max(dataSet);
   width = (maxJ - minJ)/k;
   
   for i = 1:size(dataSet, 1)
       for j = 1:k
           if dataSet(i) < minJ + j*width
               clusterAssment(i) = j;
               break;
           end
       end
       
   end

end