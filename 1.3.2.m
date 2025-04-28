% 定义符号变量
syms x m;

m = 1824

% 定义被积函数
g = log(1 + m*x) - m*x;

% 计算定积分
G = int(g, x, 0, 1);

% 显示结果
disp('(ln(1 + mx) - mx)从0到1的定积分为:');
pretty(G);
