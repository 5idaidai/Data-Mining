%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ��Ƶ����
% ���ߣ�����
% ���ڣ�2014/5/15
% �����ھ��һ����ҵ������������ɢ������
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