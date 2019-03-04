% 清除之前的一切使用痕迹
clear;clc;close all;

% 调用自定义函数创建数据集
dataSetA = dataSet2dRing(200, 100, 100)
dataSetB = dataSet2dRing(200, 50, 0)

% 把创建的数据集画出来
figure;hold on;
plot(dataSetA(1:end,1),dataSetA(1:end,2),'b*');
plot(dataSetB(1:end,1),dataSetB(1:end,2),'ro');
legend('数据类别 A','数据类别 B');
axis equal;
xlabel('x');
ylabel('y');
zlabel('z');
title('图1 数据集demo');
drawnow;