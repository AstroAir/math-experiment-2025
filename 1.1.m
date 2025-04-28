% 定义符号变量 x 和 m
syms x m;

% --- 计算第一个极限 ---
% 定义第一个极限的函数表达式
f1 = (log(1 + x - m*x^2) - x) / (1 - cos(x));

% 计算当 x 趋近于 0 时的极限
limit1 = limit(f1, x, 0);

% 显示第一个极限的代码和结果
disp('计算第一个极限：lim (x->0) [ln(1 + x - mx^2) - x] / (1 - cos(x))');
disp('代码：');
disp('syms x m;');
disp('f1 = (log(1 + x - m*x^2) - x) / (1 - cos(x));');
disp('limit1 = limit(f1, x, 0);');
disp('结果：');
disp(limit1); % 显示计算结果


fprintf('\n'); % 添加空行以便分隔

% --- 计算第二个极限 ---
% 定义第二个极限的函数表达式
% 注意: MATLAB 中反正切函数是 atan，不是 arctan
% 注意: MATLAB 中平方根函数是 sqrt
f2 = (sqrt(2 + m*x^2) - atan(m*x)) / x;

% 计算当 x 趋近于无穷大时的极限
% 对于 x 趋近于无穷大，我们需要考虑 m 的符号
% 假设 m > 0
limit2_pos_m = limit(f2, x, inf);
% 假设 m < 0
limit2_neg_m = limit(f2, x, inf, 'Left'); % 或者考虑 x -> -inf

% 我们可以先计算不带符号假设的极限，看看结果
limit2 = limit(f2, x, inf);

% 显示第二个极限的代码和结果
disp('计算第二个极限：lim (x->inf) [sqrt(2 + mx^2) - arctan(mx)] / x');
disp('代码：');
disp('syms x m;');
disp('f2 = (sqrt(2 + m*x^2) - atan(m*x)) / x;');
disp('limit2 = limit(f2, x, inf);');
disp('结果：');
disp(limit2); % 显示计算结果

% 如果需要根据 m 的符号给出结果，可以这样做：
% disp('假设 m > 0 的结果:');
% disp(limit(subs(f2, m, abs(m)), x, inf)); % 替换 m 为 |m|
% disp('假设 m < 0 的结果:');
% disp(limit(subs(f2, m, -abs(m)), x, inf)); % 替换 m 为 -|m|

% 或者使用 assume 分别计算
% syms m_pos positive
% f2_pos = subs(f2, m, m_pos);
% limit2_pos = limit(f2_pos, x, inf);
% disp('假设 m > 0 的结果 (使用 assume):');
% disp(limit2_pos);
%
% syms m_neg negative
% f2_neg = subs(f2, m, m_neg);
% limit2_neg = limit(f2_neg, x, inf);
% disp('假设 m < 0 的结果 (使用 assume):');
% disp(limit2_neg);
