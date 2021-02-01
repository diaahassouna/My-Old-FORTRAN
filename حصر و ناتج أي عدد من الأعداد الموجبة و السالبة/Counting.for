	      implicit none
	integer i,a,m,sump,sumn,nop,non
	write(*,*)'Determining summaton of positive and negative values'
	write(*,*)'and counting positive and negative numbers'
	nop=0 !refers to the number of the 1st object , which equals 1 of course
	non=0 !refers to the number of the 1st object , which equals 1 of course 
	sump=0
	sumn=0
	write(*,*)'insert the number of your values'
	read(*,*)m
	write(*,*)'number of values =',m
	write(*,*)'------------------------------------------------------'
	do i=1,m,1
	write(*,*)'insert the integer number'
	read(*,*)a
	if(a>0)then
	nop=nop+1 !refers to the number of entries to this if condition
	sump=sump+a
	else
	non=non+1 !refers to the number of entries to this if condition
	sumn=sumn+a
	end if
	end do
	write(*,*)'number of positive numbers =',nop
	write(*,*)'summation of positive numbers =',sump
	write(*,*)'number of negative numbers =',non
	write(*,*)'summation of negative numbers =',sumn
	end