%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% K-��ֵ�����㷨
% ���ߣ�����
% ���ڣ�2014/5/15
% �����ھ��һ����ҵ������������ɢ������
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [centroids,clusterAssment] = KMeans(dataSet,k)

    % �ط��������󣬵�һ�м�¼������ֵ���ڶ��д洢���
    clusterAssment = zeros(size(dataSet, 1), 2);
    % �������k������
    centroids = randCent(dataSet, k);
    % ��ʶ��������clusterChangedΪ1ʱ��������
    clusterChanged = 1;
    
    while clusterChanged
       
        % ���ñ�ʶ����Ϊ0��ֹͣ����
       clusterChanged = 0;
       
       %% Ϊÿ����Ѱ�����������
       for i = 1:size(dataSet, 1)
           
           % ���ó�ʼ����Ϊ�������������Ϊ-1
          minDist = inf;
          minIndex = -1;
          
          % �����ÿ�����ĵ����ݼ���ĳ�����ŷ�Ͼ���
          for j = 1:k
             distJI = distEclud(centroids(j),dataSet(i));
             if distJI < minDist
                minDist = distJI;
                minIndex = j;
             end
          end
          
          % �����ǰ���ݵ��м�¼���������Ĳ��Ǿ�����С�����ģ�������������������λ��
          if ~(clusterAssment(i, 1)==minIndex)
              clusterChanged = 1;
          end
          clusterAssment(i,:) = [minIndex,minDist^2];
       end
       
       %% �������ĵ�λ��
       for cent = 1:k           
           disp(cent);
           ptsInClust = dataSet(clusterAssment(:,1)==cent);
           centroids(cent) = mean(ptsInClust);
       end
    end    

end