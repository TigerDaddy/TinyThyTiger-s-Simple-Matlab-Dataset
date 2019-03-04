function [dataSet] = dataSet2dSin(dataSize, startX, amplitude, wavelength, waveCount, Dispersion)
    % dataSetBall
    % 在平面上创建一个环形数据集

    dataSet = []
    length = wavelength * waveCount
    omiga = 2*pi/wavelength
    for i = 1:dataSize
        deviation = roundn(length*rand(),-4)
        tempX = startX+deviation
        tempY = amplitude * sin(omiga*deviation) + roundn(Dispersion*rand(),-4)/2 - Dispersion
        dataSet(end+1,:) = [[tempX,tempY]]
    end
end

