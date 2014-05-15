%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 广义Jaccard计算
% 作者：梁军
% 日期：2014/5/15
% 数据挖掘第一次作业，相似度度量之广义Jaccard
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function jac = jaccard(vecA, vecB)

    numerator = dotProd(vecA, vecB);
    denominator = dotProd(vecA, vecA)^2 + dotProd(vecB, vecB)^2 -numerator;
    jac = numerator/denominator;

end