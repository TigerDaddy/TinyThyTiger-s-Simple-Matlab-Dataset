function [dataSet] = dataSet3dLinearWithDiviation(dataSize, dirVector3d, startPoint, lengthOfLine, deviation)
    % dataSet3dLinearWithDiviation
    % 使用直线的方向向量形式

    dataSet = []
    for i = 1:dataSize
        tempPositionOnLine = roundn(lengthOfLine*rand(), -4)
        pointOnLine = startPoint + tempPositionOnLine * dirVector3d
        tempTheta = roundn(360*rand(),0)
        tempR = roundn(deviation*rand(),-4)
        
        % 在空间中找到扰动圆 ==========
        a=cross(dirVector3d,[1 0 0]); %n与i叉乘，求取a向量
        if ~any(a) %如果a为零向量，将n与j叉乘
            a=cross(dirVector3d,[0 1 0]);
        end
        b=cross(dirVector3d,a); %求取b向量
        a=a/norm(a); %单位化a向量
        b=b/norm(b); %单位化b向量
        % ==========================
        
        disturbedPoint = pointOnLine + tempR * a * cos(tempTheta) + tempR * b * sin(tempTheta)
        dataSet(end+1,:) = [disturbedPoint]
    end
end

