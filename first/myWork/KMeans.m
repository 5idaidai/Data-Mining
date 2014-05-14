function [centroids,clusterAssment] = KMeans(dataSet,k)

    clusterAssment = zeros(size(dataSet, 1), 2);
    centroids = randCent(dataSet, k);
    clusterChanged = 1;
    while clusterChanged
       clusterChanged = 0;
       for i = 1:size(dataSet, 1)
          minDist = 999999;
          minIndex = -1;
          for j = 1:k
             distJI = distEclud(centroids(j),dataSet(i));
             if distJI < minDist
                minDist = distJI;
                minIndex = j;
             end
          end
          if ~(clusterAssment(i, 1)==minIndex)
              clusterChanged = 1;
          end
          clusterAssment(i,:) = [minIndex,minDist^2];
       end       
    end
    
    for cent = 1:k
        disp(cent);
        ptsInClust = dataSet(clusterAssment(:,1)==cent);
        centroids(cent) = mean(ptsInClust);
    end

end