% ���֮ǰ��һ��ʹ�úۼ�
clear;clc;close all;

% �����Զ��庯���������ݼ�
dataSetA = dataSet3dLinearWithDiviation(200, [1,1,1], [0,0,1], 10, 1)
dataSetB = dataSet3dLinearWithDiviation(200, [1,2,3], [0,0,1], 10, 5)

% �Ѵ��������ݼ�������
figure;hold on;
plot3(dataSetA(1:end,1),dataSetA(1:end,2),dataSetA(1:end,3),'b*');
plot3(dataSetB(1:end,1),dataSetB(1:end,2),dataSetB(1:end,3),'ro');
legend('������� A','������� B');
axis equal;
xlabel('x');
ylabel('y');
zlabel('z');
title('ͼ1 ���ݼ�demo');
drawnow;