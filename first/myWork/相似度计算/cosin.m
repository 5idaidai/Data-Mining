%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% �������ƶȼ���
% ���ߣ�����
% ���ڣ�2014/5/15
% �����ھ��һ����ҵ�����ƶȶ���֮�������ƶ�
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function cosin = cosin(vecA, vecB)

    numerator = dotProd(vecA, vecB);
    denominator = dotProd(vecA, vecA)*dotProd(vecB, vecB);
    cosin = numerator/denominator;

end