% 定义符号变量m
syms m;

% 定义矩阵A和B
A = [4, 2, m-2; -3, 0, 5; 1, 5, 2*m];
B = [3, 4, 0; 2, 0, -3; -2, 1, 1];

% 计算A的行列式
det_A = det(A)

% 计算A的逆矩阵
inv_A = inv(A)

% 计算A的特征值
eig_A = eig(A)

% 计算A的特征向量
[V, D] = eig(A)
% V为特征向量矩阵，D为特征值对角矩阵

% 计算AB^(-1)
AB_inv = A * inv(B)

% 计算A^(-1)B
inv_A_B = inv(A) * B

% 计算[A B]的行最简形
augmented = [A, B];
rref_result = rref(augmented)

% 如果需要获得具体数值结果，可以为m赋一个具体值，例如：
m_value = 1;  % 可以根据需要修改
A_numeric = subs(A, m, m_value);
det_A_numeric = double(subs(det_A, m, m_value));
disp(['当m=', num2str(m_value), '时，A的行列式值为：', num2str(det_A_numeric)]);
