% 定义符号变量 x 和 m
syms x m;

% 定义函数
f = cos(x) * (m/200 + sin(x));

% 计算函数在 x=0 处的泰勒展开式，最高次幂为 4
% 注意：'Order', 5 表示展开到包含 x^4 的项
taylor_expansion = taylor(f, x, 0, 'Order', 5);

% 显示结果
disp('函数 f(x) = cos(x) * (m/200 + sin(x)) 在 x=0 处的泰勒展开式 (最高次幂为 4) 为:');
disp(taylor_expansion);
