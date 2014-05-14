function dist = distEclud(vecA, vecB)

    dist = sqrt(sum(power(vecA - vecB, 2)));

end