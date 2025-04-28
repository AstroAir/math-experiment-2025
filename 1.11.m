% 定义参数 m
m = 1;  % 可以根据需要调整参数值

% 创建 x 和 y 的网格点
[x, y] = meshgrid(-2:0.1:2, -2:0.1:2);

% 计算函数值 z
z = m * x .* exp(-(x.^2 + y.^2));

% 方法一：使用 mesh 命令绘制网格图
figure(1);
mesh(x, y, z);
title('z = mxe^{-(x^2+y^2)} 的网格图');
xlabel('x');
ylabel('y');
zlabel('z');
grid on;

% 方法二：使用 surf 命令绘制曲面图
figure(2);
surf(x, y, z);
title('z = mxe^{-(x^2+y^2)} 的曲面图');
xlabel('x');
ylabel('y');
zlabel('z');
colorbar;  % 添加颜色条
