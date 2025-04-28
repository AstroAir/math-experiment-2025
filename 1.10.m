% 设置参数m的值
m = 1;  % 可以根据需要修改参数m的值

% 定义隐函数：ln(x^2 + m*y) = x^3*y + sin(x)
% 将方程变形为：ln(x^2 + m*y) - x^3*y - sin(x) = 0
f = @(x,y) log(x.^2 + m*y) - x.^3.*y - sin(x);

% 使用ezplot绘制隐函数图形
figure;
h = ezplot(f, [-2, 2, -2, 2]);  % 在[-2,2]x[-2,2]的区域内绘制

% 添加标题和标签
title(['隐函数 ln(x^2 + ', num2str(m), '*y) = x^3*y + sin(x) 的图形']);
xlabel('x');
ylabel('y');
grid on;

% 美化图形
set(h, 'LineWidth', 1.5);