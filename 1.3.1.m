% 定义符号变量
syms x;

% 定义被积函数
f = (x + sin(x))/(1 + cos(x));

% 计算不定积分
F = int(f, x);

% 显示结果
disp('(x + sin(x))/(1 + cos(x)的不定积分为:');
pretty(F);
