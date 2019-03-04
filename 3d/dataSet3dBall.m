function [dataSet] = dataSet3dBall(dataSize,radiusOfDataSet,Dispersion)
    % dataSetBall
    % ����ά�ռ��д���һ����״���ݼ�

    dataSet = []

    for i = 1:dataSize
        tempR = roundn(radiusOfDataSet+Dispersion*rand(),-4)
        tempTheta = roundn(360*rand(),0)
        tempFi = roundn(360*rand(),0)
        dataSet(end+1,:) = [[tempR*sin(tempTheta)*cos(tempFi),tempR*sin(tempTheta)*sin(tempFi),tempR*cos(tempTheta)]]
    end
end

