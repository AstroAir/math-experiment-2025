function y = f1(x)
    % 定义函数1
    % f(x) = 2x,         0 ≤ x ≤ 1/2
    %      = 2(1-x),     1/2 < x ≤ 1
    
    y = zeros(size(x));
    for i = 1:length(x)
        if x(i) >= 0 && x(i) <= 0.5
            y(i) = 2*x(i);
        elseif x(i) > 0.5 && x(i) <= 1
            y(i) = 2*(1-x(i));
        else
            y(i) = NaN; % 超出定义域返回NaN
        end
    end
    end
    