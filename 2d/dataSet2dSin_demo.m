% ���֮ǰ��һ��ʹ�úۼ�
clear;clc;close all;

% �����Զ��庯���������ݼ�
dataSetA = dataSet2dSin(200, 0, 10, 10, 3, 10)
dataSetB = dataSet2dSin(200, 0, 5, 20, 2, 10)

% �Ѵ��������ݼ�������
figure;hold on;
plot(dataSetA(1:end,1),dataSetA(1:end,2),'b*');
plot(dataSetB(1:end,1),dataSetB(1:end,2),'ro');
legend('������� A','������� B');
axis equal;
xlabel('x');
ylabel('y');
zlabel('z');
title('ͼ1 ���ݼ�demo');
drawnow;