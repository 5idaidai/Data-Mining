%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% �ȿ���
% ���ߣ�����
% ���ڣ�2014/5/15
% �����ھ��һ����ҵ������������ɢ������
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