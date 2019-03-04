% 清除之前的一切使用痕迹
clear;clc;close all;

% 调用自定义函数创建数据集
dataSetA = dataSet3dLinearWithDiviation(200, [1,1,1], [0,0,1], 10, 1)
dataSetB = dataSet3dLinearWithDiviation(200, [1,2,3], [0,0,1], 10, 5)

% 把创建的数据集画出来
figure;hold on;
plot3(dataSetA(1:end,1),dataSetA(1:end,2),dataSetA(1:end,3),'b*');
plot3(dataSetB(1:end,1),dataSetB(1:end,2),dataSetB(1:end,3),'ro');
legend('数据类别 A','数据类别 B');
axis equal;
xlabel('x');
ylabel('y');
zlabel('z');
title('图1 数据集demo');
drawnow;