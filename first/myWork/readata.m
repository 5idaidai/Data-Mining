%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ����:����
% ���ڣ�2014/5/9
% �����ھ��һ����ҵ
% ��ȡ�����ļ�
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear;

file = ('F:\�γ�\�����ھ���\��ҵ\first\myWork\winequality-red.csv');
fid = fopen(file);

data = cell(1600, 1);

line = fgetl(fid);
counter = 0;
while ~feof(fid)
    
    line = fgetl(fid);
    counter = counter+1;
    tmp = regexp(line, ',', 'split');
    num = zeros(1, size(tmp, 2), 'double');
    for i = 1:size(tmp, 2)
        num(1,i) = str2double(tmp{1, i});
    end
    data{counter} = num;
    
end