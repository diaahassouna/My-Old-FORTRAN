	implicit none
	real x,y,z,s
	integer i
	write(*,*)'insert x'
	read(*,*)x
	write(*,*)'insert interval'
	read(*,*)s
	x=x
	!�� �� ����� ������� � ����� ���� �� ��� ���� � �������� � �� ���� ��� ������
	do i=1,10,1
	!do index=first object,last object,step or interval
	y=2.0*x
	!�� ��� �� �������� ������ ���� ��� ������ ������� � ������� ������� ��������
	write(*,*) '(x,y)= (',x,'  ,',y,'   )'
	x=x+s
	!�� �� ������ ������� ��� �� (�) � ��(�) ���� �����
	!""the interval = s""
	!���� ������ ���� ������� ��� �� (�) � ��(�) ���� ����� ����� ���������� ������ � ���� ������ ���� 
      !� �������� �� ���� �������
	end do
	read(*,*)z
	end
      !this program is a test for plloting any formula , so i made a 1st degree one to make sure this kind of 
	!typing is correct ^_^ i made it hahaha :D