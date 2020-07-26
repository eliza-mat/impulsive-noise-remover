%wiener2c.m, ����������� m-�������, �������, MatLab

function f = wiener2c(g,nhood) 

%���������� gray- ��� RGB-���� �� gray- ��� RGB-�����������
%������� ���������� ���������� ������. ������������:
%������� wiener2c �������� ���������� ��������� ��������� �����
%���. ���� �� ��� ����������, �� ������������� ������������ 
%������� medfilt2c.m - ��������� ���������� ����.
%������� ��������� (���������):
%g - �������� ����������� gray- ��� RGB-�����������,
%nhood - ���������� ���� (neighborhood) ������� mxn,
%    � �������� �������� ����������� ���������� 
%    �������������� mn �������� � ��������� �������������
%    ������� ����� ����. ��� ���� (�����������������) ���� 
%    �����������, � �������� ����������� - ���.
%�������� �������� (��������):
%f - ������������ ����������� ������ �� ����, ������ � �������,
%    ��� g.
%������� ����������� ������� wiener2c �� ������� ������� 
%wiener2 ������� � ���, ��� wiener2 ������������ ���� gray-
%�����������, � wiener2c - ��� gray-, ��� � RGB-�����������.
%������ ��������� � wiener2c:
%gf = wiener2c(gn,[5 5]); %���������� ��. ���� �� ����������� gn
%����������:
%�������� �., ����������� �. MATLAB. ��������� �������� �
% �����������. ���.: �����, 2002, �. 553.

kg = ndims(g); %���� kg=2, �� g - gray, � ���� kg=3, �� g - RGB
if (kg==2) %gray
  f = wiener2(g,nhood);
else %RGB
  f(:,:,1) = wiener2(g(:,:,1),nhood);
  f(:,:,2) = wiener2(g(:,:,2),nhood);
  f(:,:,3) = wiener2(g(:,:,3),nhood);
end