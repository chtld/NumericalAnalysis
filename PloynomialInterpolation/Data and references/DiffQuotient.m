function [coef] = DiffQuotient(x, y)
%DIFFQUOTIENT 计算差商
%   此处显示详细说明
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
coef = diag(DQresult);
end

