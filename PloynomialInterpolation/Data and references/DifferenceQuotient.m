%% 数据读取
data = xlsread('exam1.xlsx');
x = data(:, 1);
y = data(:, 2);
%% 差商计算
DQresult = zeros(size(x, 1));
DQresult(:, 1) = y;
nr = size(DQresult, 1);
% for i = 2: nr
%     for j = i: nr
%         DQresult(j, i) = (DQresult(j - 1, i - 1) - DQresult(j, i - 1)) / (x(j - i + 1) - x(j));
%     end
% end
for i = 2: nr
    DQresult(i: nr, i) = (DQresult(i - 1: nr - 1, i - 1) - DQresult(i: nr, i - 1)) ./ (x(1: nr - i + 1) - x(i: nr));
end
%% 数据写入
nc = size(DQresult, 2);
fid = fopen('DQresult.txt', 'wt');
fprintf(fid, [repmat('%9.5f', 1, nc), '\n'], DQresult');
fclose(fid);
% nr = size(DQresult, 1);
% fid2 = fopen('DQresult.txt', 'w');
% for i = 1: nc
%     fprintf(fid2, [repmat('%9.5f', 1, i), '\n'], DQresult(i, 1: i));
% end
% fclose(fid2);