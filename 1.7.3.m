function y = f2(x)
    % 定义函数2
    % f(x) = x-1,    -π ≤ x < 0
    %      = x+1,    0 ≤ x ≤ π
    
    y = zeros(size(x));
    for i = 1:length(x)
        if x(i) >= -pi && x(i) < 0
            y(i) = x(i)-1;
        elseif x(i) >= 0 && x(i) <= pi
            y(i) = x(i)+1;
        else
            y(i) = NaN; % 超出定义域返回NaN
        end
    end
    end