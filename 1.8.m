% --- 获取用户输入 ---
m = input('请输入参数 m 的值 (m >= 101): ');

% --- 检查 m 的有效性 ---
if isempty(m) || ~isnumeric(m) || m < 101
    error('输入无效，m 的值必须是大于或等于 101 的数字。');
end

% --- 根据 m 确定 t 的范围 ---
if m >= 101 && m <= 500
    t_limit = m / 25;
    t_range_str = ['[-', num2str(m), '/25, ', num2str(m), '/25]'];
elseif m >= 501 && m <= 1000
    t_limit = m / 100;
    t_range_str = ['[-', num2str(m), '/100, ', num2str(m), '/100]'];
else % m >= 1001
    t_limit = m / 250;
    t_range_str = ['[-', num2str(m), '/250, ', num2str(m), '/250]'];
end

% --- 生成参数 t 的向量 ---
% 使用 500 个点来确保曲线平滑
t = linspace(-t_limit, t_limit, 500);

% --- 计算曲线 (1) 的坐标 ---
x1 = (m/20) * cos(t);
y1 = (m/20) * sin(t);
z1 = t;

% --- 在第一个窗口绘制曲线 (1) ---
figure(1); % 打开或激活第一个图形窗口
plot3(x1, y1, z1, 'b-', 'LineWidth', 1.5); % 使用蓝色实线绘制
grid on; % 显示网格
axis equal; % 设置坐标轴比例相等，更真实地显示螺旋形状
xlabel('X 轴');
ylabel('Y 轴');
zlabel('Z 轴');
title(['空间曲线 (1): x = (m/20)cos(t), y = (m/20)sin(t), z = t', newline, ...
       '参数 m = ', num2str(m), ', t范围: ', t_range_str]);
legend('曲线 (1)');
view(3); % 确保是三维视角

% --- 计算曲线 (2) 的坐标 ---
% 注意: t.*sin(t) 和 t.*cos(t) 使用点乘 .* 表示元素级乘法
x2 = cos(t) + t .* sin(t);
y2 = sin(t) - t .* cos(t);
z2 = -t;

% --- 在第二个窗口绘制曲线 (2) ---
figure(2); % 打开或激活第二个图形窗口
plot3(x2, y2, z2, 'r-', 'LineWidth', 1.5); % 使用红色实线绘制
grid on; % 显示网格
axis equal; % 设置坐标轴比例相等
xlabel('X 轴');
ylabel('Y 轴');
zlabel('Z 轴');
title(['空间曲线 (2): x = cos(t)+tsin(t), y = sin(t)-tcos(t), z = -t', newline, ...
       '参数 m = ', num2str(m), ', t范围: ', t_range_str]);
legend('曲线 (2)');
view(3); % 确保是三维视角

% --- 代码结束 ---
