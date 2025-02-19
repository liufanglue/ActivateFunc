% test |softmax(x + y)| <= |softmax(x)| + |softmax(y)| |softmax(x) - softmax(y)| <= |softmax(x - y)| begin

function testSoftmaxFuncEq1

    % 初始化变量
    x_range = -10 : 1 : 10;
    y_range = -10 : 1 : 10;
    [X, Y] = meshgrid(x_range, y_range);
    Z = zeros(size(X));

    % 遍历x和y的范围
    for i = 1 : length(x_range)
        for j = 1 : length(y_range)
            xIncr = x_range(i) + x_range;
            yIncr = y_range(j) + y_range;
            % 计算softmax(x)和softmax(y)
            xyRst = softmax(xIncr + yIncr);
            xRst = softmax(xIncr);
            yRst = softmax(yIncr);
            % 计算z
            Z(i, j) = norm(xyRst, 1) - norm(xRst, 1) - norm(yRst, 1);
            %Z(i, j) = norm(xyRst, 2) - norm(xRst, 2) - norm(yRst, 2);
            %Z(i, j) = norm(xRst - yRst, 1) - norm(xRst - yRst, 1)
            %Z(i, j) = norm(xRst - yRst, 2) - norm(xRst - yRst, 2)
            %norm(softmax_x + softmax_y, 2)
            %norm(softmax_x, 2) + norm(softmax_y, 2)
        end
    end

    % 找到Z的最小值和最大值
    z_min = min(Z(:));
    z_max = max(Z(:));

    % 设置显示的z轴范围，使其更接近0
    z_display_min = -0.01;
    z_display_max = 0.01;

    % 绘制3D表面图
    figure;
    h = surf(X, Y, Z, 'EdgeColor', 'none');
    xlabel('X');
    ylabel('Y');
    zlabel('Z');
    title('Plot of z = norm(softmax(x) + softmax(y), 2) - norm(softmax(x), 2) - norm(softmax(y), 2)');
    colorbar; % 显示颜色条

    % 手动调整颜色范围
    caxis([-1, 1]);

    % 调整视角
    view(30, 30); % 例如，view(30, 30)

    % 设置x、y、z轴的显示范围
    axis([-10, 10, -10, 10, -10, 10]);

    % 添加网格
    grid on;
    
    pause;

end

% 定义softmax函数
function y = softmax(x)
    expVal = exp(x);
    sumVal = sum(expVal, 2); % 对所有元素求和
    y = expVal / sumVal;
end

%rst
% |softmax(x + y)| <= |softmax(x)| + |softmax(y)| succ
% |softmax(x) - softmax(y)| <= |softmax(x - y)| succ, end




