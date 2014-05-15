%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 余弦相似度计算
% 作者：梁军
% 日期：2014/5/15
% 数据挖掘第一次作业，相似度度量之余弦相似度
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function cosin = cosin(vecA, vecB)

    numerator = dotProd(vecA, vecB);
    denominator = dotProd(vecA, vecA)*dotProd(vecB, vecB);
    cosin = numerator/denominator;

end