function testSoftmaxFuncConv

    %test softmax wave status begin
    
    x = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

    %y = [-10, 10, -10, 10, -10, 10, -10, 10, -10, 10];

    %y = y ./ 2
    %y = y ./ 5
    %y = y ./ 10
    %y = y ./ 20
    %y = y ./ 50
    %y = y ./ 100

    %y = [10, 10, 2, 4, 6, 7, 8, 10, 9, 10];

    %y = y ./ 2
    %y = y ./ 5
    %y = y ./ 10
    %y = y ./ 20
    %y = y ./ 50
    %y = y ./ 100

    y = [-10, 4, -5, 6, -3, 10, -6, 2, -7, 8];

    %y = y ./ 2
    %y = y ./ 5
    %y = y ./ 10
    %y = y ./ 20
    %y = y ./ 50
    %y = y ./ 100

    oriRate = y ./ sum(abs(y));
    calcRst = softmax(y);
    % dstRate = calcRst, sum(abs(calcRst)) = 1
    dstRate = calcRst ./ sum(abs(calcRst));

    clf

    %plot(x, y, 'b')
    %hold on
    plot(x, oriRate, 'r')
    hold on
    plot(x, dstRate, 'g')
    hold off

    pause;

    %test softmax wave status end

end

function y = softmax(x)
    expVal = exp(x);
    sumVal = sum(expVal);
    y = expVal / sumVal;
end

