% ���֮ǰ��һ��ʹ�úۼ�
clear;clc;close all;

% �����Զ��庯���������ݼ�
dataSetA = dataSet2dLinearWithDiviation(200, 1, 10, 0, 20, 1)
dataSetB = dataSet2dLinearWithDiviation(200, 0, 20, 0, 20, 5)

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