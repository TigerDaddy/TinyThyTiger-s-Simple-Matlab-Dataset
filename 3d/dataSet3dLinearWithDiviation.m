function [dataSet] = dataSet3dLinearWithDiviation(dataSize, dirVector3d, startPoint, lengthOfLine, deviation)
    % dataSet3dLinearWithDiviation
    % ʹ��ֱ�ߵķ���������ʽ

    dataSet = []
    for i = 1:dataSize
        tempPositionOnLine = roundn(lengthOfLine*rand(), -4)
        pointOnLine = startPoint + tempPositionOnLine * dirVector3d
        tempTheta = roundn(360*rand(),0)
        tempR = roundn(deviation*rand(),-4)
        
        % �ڿռ����ҵ��Ŷ�Բ ==========
        a=cross(dirVector3d,[1 0 0]); %n��i��ˣ���ȡa����
        if ~any(a) %���aΪ����������n��j���
            a=cross(dirVector3d,[0 1 0]);
        end
        b=cross(dirVector3d,a); %��ȡb����
        a=a/norm(a); %��λ��a����
        b=b/norm(b); %��λ��b����
        % ==========================
        
        disturbedPoint = pointOnLine + tempR * a * cos(tempTheta) + tempR * b * sin(tempTheta)
        dataSet(end+1,:) = [disturbedPoint]
    end
end

