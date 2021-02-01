	implicit none
	real b,h,a,r,e,i,x
	write(*,*)'calculating any rectangle inertia'
	write(*,*)'please insert your base and height'
	write(*,*)'and your eccentericity all in respect'
	read(*,*)b,h,e
	a=b*h
	r=(b*(h**3.0))/12.0
	i=r+a*e**2
	write(*,*)'inertia=',i
	write(*,*)'please insert any number to exit'
	read(*,*)x
	x=x
	write(*,*)x
	end