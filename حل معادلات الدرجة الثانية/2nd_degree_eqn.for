	implicit none
	real a,b,c,x1,x2,d,e,f,l,g
20	write(*,*) 'Solving 2nd degree Equations'
	write(*,*) 'For the Equation formula'
	write(*,*) 'A*(X)^2+BX+C=0'
	write(*,*) 'Please Insert your coeffecients(a,b,c) with respect'
	read(*,*)a,b,c
	d=(b**2.0)-(4*a*c)
	if(d>=0)then
	x1=(-b+sqrt(d))/(2*a)
	x2=(-b-sqrt(d))/(2*a)
	write(*,*) '           a     ','          b     ','          c   '
	write(*,*)a,b,c
	write(*,*) '-----------------------------------------------------'
	write(*,*) 'X1 =',x1
	write(*,*) 'X2 =',x2
70	write(*,*) 'Want to quit ?'
	write(*,*)'insert (1) for {yes} , (0) for {no}'
 	read(*,*)g
	if(g==1.0)goto 30
	if(g==0.0)goto 20
	if(g/=1.0.and.g/=0.0)goto 60
60	write(*,*)'You must insert (1) or (0) only'
	goto 70
30	write(*,*) 'Insert any value to exit'
	read(*,*)l
	l=l
	write(*,*) 'GOOD BYE',l
	elseif(d<0)then
	e=-d
	f=sqrt(e)/(2*a)
	x1=-b/(2*a)
	x2=-b/(2*a)
	write(*,*) '           a     ','          b     ','          c   ' 
 	write(*,*)a,b,c
	write(*,*) '-----------------------------------------------------'
      write(*,*) 'X1 =',x1,'     +',f,'i'
	write(*,*) 'X2 =',x2,'     -',f,'i'
50	write(*,*) 'Want to quit ?'
	write(*,*)'insert (1) for {yes} , (0) for {no}'
	read(*,*)g
	if(g==1.0)goto 10
	if(g==0.0)goto 20
	if(g/=1.0.and.g/=0.0)goto 40
40	write(*,*)'You must insert (1) or (0) only'
	goto 50
10	write(*,*) 'Insert any value to exit'
 	read(*,*)l
	l=l
	write(*,*) 'GOOD BYE',l
	end	if
	end
