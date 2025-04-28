% 定义参数
m = 1; % 假设m=1，根据实际情况可以调整
sigma1 = 1000/m;
sigma2 = 500/m;
sigma3 = 100/m;

% 定义x轴范围（关于原点对称的适当区间）
x_range = linspace(-5*sigma3, 5*sigma3, 1000);

% 计算三个不同σ值的高斯函数值
f1 = (1/(sigma1*sqrt(2*pi))) * exp(-(x_range.^2)/(2*sigma1^2));
f2 = (1/(sigma2*sqrt(2*pi))) * exp(-(x_range.^2)/(2*sigma2^2));
f3 = (1/(sigma3*sqrt(2*pi))) * exp(-(x_range.^2)/(2*sigma3^2));

% 绘图
figure;
plot(x_range, f1, 'r-', 'LineWidth', 2); % 红色曲线，sigma=1000/m
hold on;
plot(x_range, f2, 'g-', 'LineWidth', 2); % 绿色曲线，sigma=500/m
plot(x_range, f3, 'b-', 'LineWidth', 2); % 蓝色曲线，sigma=100/m
hold off;

% 添加标题和标签
title('不同\sigma值的高斯概率密度函数');
xlabel('x');
ylabel('f(x)');
legend(['\sigma = 1000/m'], ['\sigma = 500/m'], ['\sigma = 100/m']);
grid on;

% 调整y轴范围，确保能清晰看到所有曲线
ylim([0, 1.1*max([max(f1), max(f2), max(f3)])]);