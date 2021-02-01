		implicit none
	real x,r,y,q,z,a,b,c,d,e,f,g,h,j,k,n,s,t,quit 
	integer i,m,u
20	write(*,*)'Plotting (Y) values for each (X) values in'
	write(*,*)'the 10th degree formula'
	write(*,*)'------'
	write(*,*)'1- Insert (1) to put your 1st value of (X) ,'
	write(*,*)'your step and the number of your points '
	write(*,*)'2- Insert (2) to put your 1st value of (X) ,'
	write(*,*)'your step and your last value of (X)'
	write(*,*)'NOTICE that the program moves to the positive side'
	write(*,*)'------------------------------------------------------'
	read(*,*)u
	if (u==1) then
	write(*,*)'------------------------------------------------------'
	write(*,*)'insert your 1st value of (X)'
	read(*,*)x
	write(*,*)'X =',x
	write(*,*)'------'
	write(*,*)'insert your step (your interval of X)'
	read(*,*)s
	write(*,*) 'step (interval of X) =',s
	write(*,*) 'insert your number of points'
	read(*,*)m
	write(*,*) 'number of points =',m
	write(*,*)'------------------------------------------------------'
	write(*,*)'NOW YOU CAN INPUT THE COEFFICIENTS OF YOUR FORMULA'
	write(*,*)'------------------------------------------------------'
	write(*,*)'insert coefficient of x^10'
	read(*,*)a
	write(*,*)'coefficient of x^10 =',a
	write(*,*)'insert coefficient of x^9'
	read(*,*)b
	write(*,*)'coefficient of x^9 =',b
	write(*,*)'insert coeffecient of x^8'
	read(*,*)c
	write(*,*)'coefficient of x^8 =',c
	write(*,*)'insert coeffecient of x^7'
	read(*,*)d
	write(*,*)'coefficient of x^7 =',d
	write(*,*)'insert coeffecient of x^6'
	read(*,*)e
	write(*,*)'coefficient of x^6 =',e
	write(*,*)'insert coeffecient of x^5'
	read(*,*)f
	write(*,*)'coefficient of x^5 =',f
	write(*,*)'insert coeffecient of x^4'
	read(*,*)g
	write(*,*)'coefficient of x^4 =',g
	write(*,*)'insert coeffecient of x^3'
	read(*,*)h
	write(*,*)'coefficient of x^3 =',h
	write(*,*)'insert coeffecient of x^2'
	read(*,*)j
	write(*,*)'coefficient of x^2 =',j
	write(*,*)'insert coeffecient of x'
	read(*,*)k
	write(*,*)'coefficient of x =',k
	write(*,*)'insert your free number'
	read(*,*)n
	write(*,*)'free number =',n
	write(*,*)'------------------------------------------------------'
	write(*,*)'------------------------------------------------------'  
	x=x
	do i=1,m,1
	q=a*(x**10.0)+b*(x**9.0)+c*(x**8.0)+d*(x**7.0)+e*(x**6.0) 
	z=f*(x**5.0)+g*(x**4.0)+h*(x**3.0)+j*(x**2.0)+k*(x)+n
	y=q+z
	write(*,*) '(X,Y) = (',x,'        ,',y,'       )'
	x=x+s
	end do
	elseif (u==2) then
	write(*,*)'------------------------------------------------------'
      write(*,*)'insert your 1st value of (X)'
 	read(*,*)x
	write(*,*)'X1 =',x
	write(*,*)'------'
	write(*,*)'insert your step (your interval of X)'
	read(*,*)s
	write(*,*) 'step (interval of X) =',s
	write(*,*) 'insert your last value of (X)'
	read(*,*)r
	write(*,*)'X2 =',r
	write(*,*)'------------------------------------------------------'
	write(*,*)'NOW YOU CAN INPUT THE COEFFICIENTS OF YOUR FORMULA'
	write(*,*)'------------------------------------------------------'
	write(*,*)'insert coefficient of x^10'
	read(*,*)a
	write(*,*)'coefficient of x^10 =',a
	write(*,*)'insert coefficient of x^9'
	read(*,*)b
	write(*,*)'coefficient of x^9 =',b
	write(*,*)'insert coeffecient of x^8'
	read(*,*)c
	write(*,*)'coefficient of x^8 =',c
	write(*,*)'insert coeffecient of x^7'
	read(*,*)d
	write(*,*)'coefficient of x^7 =',d
	write(*,*)'insert coeffecient of x^6'
	read(*,*)e
	write(*,*)'coefficient of x^6 =',e
	write(*,*)'insert coeffecient of x^5'
	read(*,*)f
	write(*,*)'coefficient of x^5 =',f
	write(*,*)'insert coeffecient of x^4'
	read(*,*)g
	write(*,*)'coefficient of x^4 =',g
	write(*,*)'insert coeffecient of x^3'
	read(*,*)h
	write(*,*)'coefficient of x^3 =',h
	write(*,*)'insert coeffecient of x^2'
	read(*,*)j
	write(*,*)'coefficient of x^2 =',j
	write(*,*)'insert coeffecient of x'
	read(*,*)k
	write(*,*)'coefficient of x =',k
	write(*,*)'insert your free number'
	read(*,*)n
	write(*,*)'free number =',n
	write(*,*)'------------------------------------------------------'
	write(*,*)'------------------------------------------------------'  
	x=x
	m=0
	do 
	q=a*(x**10.0)+b*(x**9.0)+c*(x**8.0)+d*(x**7.0)+e*(x**6.0) 
	z=f*(x**5.0)+g*(x**4.0)+h*(x**3.0)+j*(x**2.0)+k*(x)+n
	y=q+z
	m=m+1
	write(*,*) '(X,Y) = (',x,'        ,',y,'       )'
	x=x+s
	if(x>r+s)exit
	end do
	write(*,*)'----------'
	write(*,*)'number of points processed =',m
	elseif(u/=1.and.u/=2)then
	write(*,*) 'you must insert (1) or (2) only'
	end if
	write(*,*)'------------------------------------------------------'
40	write(*,*)'Want to quit ?'
	read(*,*)quit
	if(quit==1.0)goto 10
	if(quit==0.0)goto 20
	if(quit/=1.0.and.quit/=0.0)goto 30
30	write(*,*)'You must insert (1) or (0) only'
	goto 40
10	write(*,*) 'insert any number to exit'
	read(*,*)t
	write(*,*)'GOOD BYE',t
	end			
