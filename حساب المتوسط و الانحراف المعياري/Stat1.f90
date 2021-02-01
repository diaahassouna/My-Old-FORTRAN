	implicit none
	real x,x1,x2,s,s1,s2,s3,s4,x3,y,a,mv,md,sd,va,n,c
	integer i,m,c1,c2
	write(*,*)'Determining summation , variance , mean and standard' 
	write(*,*)'deviation of any number of values'
	write(*,*)'------------------------------------------------------'
	write(*,*)'insert your number of values'
	read(*,*)m
	write(*,*)'number of values =',m
	x1=0.0
	x2=0.0
	s3=0.0
	s4=0.0
	c1=0.0
	c2=0.0
	n=m
	do i=1,m,1
	write(*,*)'insert your value'
	read(*,*)a
	if(a>0.0)then
	c1=c1+1
	x1=x1+a
	s1=a**2.0
	s3=s3+s1
	elseif(a<0.0)then
	c2=c2+1
	x2=x2+a
	x3=abs(x2)
	s2=a**2.0
	s4=s4+s2
	end if
	end do
	x=x1+x2
	y=x1+x3
	s=s3+s4
	mv=x/n
	md=y/n
	va=s/n
	sd=sqrt(s/n)
	write(*,*)'summation =',x
	write(*,*)'mean value =',mv
	write(*,*)'mean deviation =',md
	write(*,*)'variance =',va
	write(*,*)'standard deviation =',sd
	write(*,*)'-------------------------'
	write(*,*)'number of positive values =',c1
	write(*,*)'summation of positive values =',x1
	write(*,*)'number of negative values =',c2
	write(*,*)'summation of negative values =',x2
	write(*,*)'------------------------------------------------------'
	write(*,*)'Thank you for using this program'
	write(*,*)'insert any value to exit'
	read(*,*)c
	write(*,*)'GOOD BYE',c
	end