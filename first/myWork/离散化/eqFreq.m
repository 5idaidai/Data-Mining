%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 等频划分
% 作者：梁军
% 日期：2014/5/15
% 数据挖掘第一次作业，连续数据离散化分类
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function clusterAssment = eqFreq(dataSet, k)

   clusterAssment = zeros(size(dataSet, 1), 1);
   sortData = sort(dataSet);
   width = uint16(size(dataSet, 1)/k);
   width = width-1;
   for i = 1:size(dataSet, 1)
      for j=1:k
         if dataSet(i)<sortData(j*width)
            clusterAssment(i) = j; 
            break;
         end
      end
      if dataSet(i)>=15.5
            clusterAssment(i) = 6; 
      end
   end

end