function centroids = randCent(dataSet, k)

    centroids = zeros(k, 1);
    minJ = min(dataSet);
    rangeJ = max(dataSet) - minJ;
    for i = 1:k
       centroids(i,1) =  minJ + rangeJ * rand(1);
    end
 
end