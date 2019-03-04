function [dataSet] = dataSet2dLinearWithDiviation(dataSize, k, b, minX, maxX, deviation)
    % dataSet2dLinearWithDiviation
    % ʹ�� y=kx+b ��ʽ

    dataSet = []
    for i = 1:dataSize
        tempX = roundn(minX+(maxX-minX)*rand(),-4)
        tempY = roundn(k*tempX+b-deviation/2+deviation*rand(),-4)
        dataSet(end+1,:) = [[tempX, tempY]]
    end
end

