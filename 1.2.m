% 1. 定义符号变量
syms x m

% 2. 定义函数
f = exp(m*x) * sin(x);

% 3. 求二阶导数 f''(x)
f2 = diff(f, x, 2); % 对 f 求关于 x 的二阶导数

% 显示二阶导数结果
disp('f''''(x) = ');
pretty(f2) % 使用 pretty 函数使输出更美观

% 4. 求六阶导数 f^(6)(x)
f6 = diff(f, x, 6); % 对 f 求关于 x 的六阶导数

% 5. 求 f^(6)(0)
f6_0 = subs(f6, x, 0); % 将 x=0 代入 f6

% 显示 f^(6)(0) 的结果
disp('f^(6)(0) = ');
pretty(f6_0)
