% test |softmax(x)| <= |x| begin

function testSoftmaxFuncEq2

    % 初始化变量
    xRange = -100 : 0.1 : 100;
    yRange = zeros(size(xRange));

    for i = 1 : length(xRange)
        x = xRange(i) + xRange;
        y = softmax(x);
        yRange(i) = norm(y, 1) - norm(x, 1);
    end

    plot(xRange, yRange)

    pause;

end

% 定义softmax函数
function y = softmax(x)
    expVal = exp(x);
    sumVal = sum(expVal); % 对所有元素求和
    y = expVal / sumVal;
end

%rst
% |softmax(x)| <= |x| succ, end



