function [dataSet] = dataSet2dRing(dataSize,radiusOfDataSet,Dispersion)
    % dataSetBall
    % 在平面上创建一个环形数据集

    dataSet = []
    for i = 1:dataSize
        tempR = roundn(radiusOfDataSet+Dispersion*rand(),-4)
        tempAlpha = roundn(360*rand(),0)
        dataSet(end+1,:) = [[tempR*cos(tempAlpha),tempR*sin(tempAlpha)]]
    end
end

