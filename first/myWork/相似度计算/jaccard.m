%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ����Jaccard����
% ���ߣ�����
% ���ڣ�2014/5/15
% �����ھ��һ����ҵ�����ƶȶ���֮����Jaccard
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function jac = jaccard(vecA, vecB)

    numerator = dotProd(vecA, vecB);
    denominator = dotProd(vecA, vecA)^2 + dotProd(vecB, vecB)^2 -numerator;
    jac = numerator/denominator;

end