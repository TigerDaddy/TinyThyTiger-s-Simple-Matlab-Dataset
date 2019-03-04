function [dataSet] = dataSet2dRing(dataSize,radiusOfDataSet,Dispersion)
    % dataSetBall
    % ��ƽ���ϴ���һ���������ݼ�

    dataSet = []
    for i = 1:dataSize
        tempR = roundn(radiusOfDataSet+Dispersion*rand(),-4)
        tempAlpha = roundn(360*rand(),0)
        dataSet(end+1,:) = [[tempR*cos(tempAlpha),tempR*sin(tempAlpha)]]
    end
end

