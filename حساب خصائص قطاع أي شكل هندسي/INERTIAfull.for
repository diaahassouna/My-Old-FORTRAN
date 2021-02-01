	implicit none
	real b,h,e,c,a,m,r,t,i,o,p,p1,p2,l,g,j,u,v,n,x,z		   
	write(*,*) 'Enjoy to determine properties of Areas'		
	write(*,*) 'Press any of these numbers to dedect your shape'
	write(*,*) '(1) for Rectangle'
	write(*,*) '(2) for Square'
	write(*,*) '(3) for Right Angle Triangle'
	write(*,*) '(4) for Equilateral Triangle'
	write(*,*) '(5) for Circle'
	write(*,*) '(6) for Semi-Circle'
	write(*,*) '(7) for Quarter-Circle'
	read(*,*)z
	z=z
	if(z==1.0)then
	write(*,*) 'Welcome to Rectangle'
	write(*,*) 'Insert base and height in respect'
	read(*,*) b,h
	write(*,*) 'Insert eccentericity parallel of x Axis'
	write(*,*) 'NOTE THAT YOU SUBTRACT CENTROID FROM YOUR POINT'
	read(*,*) c
	write(*,*) 'Insert eccentericity parallel of y Axis'
	write(*,*) 'NOTE THAT YOU SUBTRACT CENTROID FROM YOU POINT'
	read(*,*) e
	a=b*h
	m=2.0*(b+h)
	r=(b*(h**3.0))/12.0
	t=(h*(b**3.0))/12.0
	i=r+a*e**2.0
	o=t+a*c**2.0
	p=a*c*e
	l=i+o
	g=sqrt(i/a)
	j=sqrt(o/a)
	u=((i+o)/2.0)+sqrt(((i-o)/2.0)**2.0)+(p**2.0)
	v=((i+o)/2.0)-sqrt(((i-o)/2.0)**2.0)+(p**2.0)
	n=-1*((2*p)/(i-o))
	write(*,*) 'Area =',a
	write(*,*) 'Prameter =',m
	write(*,*) 'Inertia of x =',i
	write(*,*) 'Inertia of y =',o
	write(*,*) 'Product of Inertia =',p
	write(*,*) 'Polar Moment of Inertia =',l
	write(*,*) 'Radius of Gyration of x =',g
	write(*,*) 'Radius of Gyration of y =',j
	write(*,*) 'Inertia of u =',u
	write(*,*) 'Inertia of v =',v
	write(*,*) 'tan(2*rotation) =',n
	elseif(z==2.0)then
	write(*,*) 'Welcome to Square'
	write(*,*) 'Insert base or height in respect'
	read(*,*) b
	write(*,*) 'Insert eccentericity parallel of x Axis'
	write(*,*) 'NOTE THAT YOU SUBTRACT CENTROID FROM YOUR POINT'
	read(*,*) c
	write(*,*) 'Insert eccentericity parallel of y Axis'
	write(*,*) 'NOTE THAT YOU SUBTRACT CENTROID FROM YOU POINT'
	read(*,*) e
	a=b**2.0
	m=4.0*b
	t=(b**4.0)/12.0
	r=t
	i=r+a*e**2.0
	o=t+a*c**2.0
	p=a*c*e
	l=i+o
	g=sqrt(i/a)
	j=sqrt(o/a)
	u=((i+o)/2.0)+sqrt(((i-o)/2.0)**2.0)+(p**2.0)
	v=((i+o)/2.0)-sqrt(((i-o)/2.0)**2.0)+(p**2.0)
	n=-1*((2*p)/(i-o))
	write(*,*) 'Area =',a
	write(*,*) 'Prameter =',m
	write(*,*) 'Inertia of x =',i
	write(*,*) 'Inertia of y =',o
	write(*,*) 'Product of Inertia =',p
	write(*,*) 'Polar Moment of Inertia =',l
	write(*,*) 'Radius of Gyration of x =',g
	write(*,*) 'Radius of Gyration of y =',j
	write(*,*) 'Inertia of u =',u
	write(*,*) 'Inertia of v =',v
	write(*,*) 'tan(2*rotation) =',n
	elseif(z==3.0)then
	write(*,*) 'Welcome to Right Angle Triangle'
	write(*,*) 'Insert base and height in respect'
	read(*,*) b,h
	write(*,*) 'Insert eccentericity parallel of x Axis'
	write(*,*) 'NOTE THAT YOU SUBTRACT CENTROID FROM YOUR POINT'
	read(*,*) c
	write(*,*) 'Insert eccentericity parallel of y Axis'
	write(*,*) 'NOTE THAT YOU SUBTRACT CENTROID FROM YOU POINT'
	read(*,*) e
	a=0.5*b*h
	m=b+h+(sqrt((b**2.0)+(h**2.0)))
	r=(b*(h**3.0))/36.0
	t=(h*(b**3.0))/36.0
	i=r+a*e**2.0
	o=t+a*c**2.0
	p1=(a*c*e)-((b*h)**2.0)/72
      p2=(a*c*e)+((b*h)**2.0)/72
	l=i+o
	g=sqrt(i/a)
	j=sqrt(o/a)
	u=((i+o)/2.0)+sqrt(((i-o)/2.0)**2.0)+(p**2.0)
	v=((i+o)/2.0)-sqrt(((i-o)/2.0)**2.0)+(p**2.0)
	n=-1*((2*p)/(i-o))
	write(*,*) 'Area =',a
	write(*,*) 'Prameter =',m
	write(*,*) 'Inertia of x =',i
	write(*,*) 'Inertia of y =',o
	write(*,*) 'Product of Inertia (negative tangent) =',p1
	write(*,*) 'Product of Inertia (positive tangent) =',p2
	write(*,*) 'Polar Moment of Inertia =',l
	write(*,*) 'Radius of Gyration of x =',g
	write(*,*) 'Radius of Gyration of y =',j
	write(*,*) 'Inertia of u =',u
	write(*,*) 'Inertia of v =',v
	write(*,*) 'tan(2*rotation) =',n
	elseif(z==4.0)then
	write(*,*) 'Welcome to Equilateral Triangle'
 	write(*,*) 'Insert base and height in respect'
	read(*,*) b,h
	write(*,*) 'Insert eccentericity parallel of x Axis'
	write(*,*) 'NOTE THAT YOU SUBTRACT CENTROID FROM YOUR POINT'
	read(*,*) c
	write(*,*) 'Insert eccentericity parallel of y Axis'
	write(*,*) 'NOTE THAT YOU SUBTRACT CENTROID FROM YOU POINT'
	read(*,*) e
	a=0.5*b*h
	m=b+2.0*sqrt((0.5*b)**2.0)+(h**2.0)
	r=b*(h**3.0)/36.0
	t=h*(b**3.0)/48.0
	i=r+a*e**2.0
	o=t+a*c**2.0
	p=(a*c*e)
	l=i+o
	g=sqrt(i/a)
	j=sqrt(o/a)
	u=((i+o)/2.0)+sqrt(((i-o)/2.0)**2.0)+(p**2.0)
	v=((i+o)/2.0)-sqrt(((i-o)/2.0)**2.0)+(p**2.0)
	n=-1*((2*p)/(i-o))
	write(*,*) 'Area =',a
	write(*,*) 'Prameter =',m
	write(*,*) 'Inertia of x =',i
	write(*,*) 'Inertia of y =',o
	write(*,*) 'Product of Inertia =',p
	write(*,*) 'Polar Moment of Inertia =',l
	write(*,*) 'Radius of Gyration of x =',g
	write(*,*) 'Radius of Gyration of y =',j
	write(*,*) 'Inertia of u =',u
	write(*,*) 'Inertia of v =',v
	write(*,*) 'tan(2*rotation) =',n
	elseif(z==5.0)then
 	write(*,*) 'Welcome to Circle'
	write(*,*) 'Insert radius with my thanks'
	read(*,*) b
	write(*,*) 'Insert eccentericity parallel of x Axis'
	write(*,*) 'NOTE THAT YOU SUBTRACT CENTROID FROM YOUR POINT'
	read(*,*) c
	write(*,*) 'Insert eccentericity parallel of y Axis'
	write(*,*) 'NOTE THAT YOU SUBTRACT CENTROID FROM YOU POINT'
	read(*,*) e
	a=3.141593*(b**2.0)
	m=2.0*3.141593*b
	r=(3.141593*(b**4.0))/4.0
	t=(3.141593*(b**4.0))/4.0
	i=r+a*e**2.0
	o=t+a*c**2.0
	p=a*c*e
	l=i+o
	g=sqrt(i/a)
	j=sqrt(o/a)
	u=((i+o)/2.0)+sqrt(((i-o)/2.0)**2.0)+(p**2.0)
	v=((i+o)/2.0)-sqrt(((i-o)/2.0)**2.0)+(p**2.0)
	n=-1*((2*p)/(i-o))
	write(*,*) 'Area =',a
	write(*,*) 'Prameter =',m
	write(*,*) 'Inertia of x =',i
	write(*,*) 'Inertia of y =',o
	write(*,*) 'Product of Inertia =',p
	write(*,*) 'Polar Moment of Inertia =',l
	write(*,*) 'Radius of Gyration of x =',g
	write(*,*) 'Radius of Gyration of y =',j
	write(*,*) 'Inertia of u =',u
	write(*,*) 'Inertia of v =',v
	write(*,*) 'tan(2*rotation) =',n
    	elseif(z==6.0)then
	write(*,*) 'Welcome to Semi-Circle'
	write(*,*) 'Insert radius with my thanks'
	read(*,*) b
	write(*,*) 'Insert eccentericity parallel of x Axis'
	write(*,*) 'NOTE THAT YOU SUBTRACT CENTROID FROM YOUR POINT'
	read(*,*) c
	write(*,*) 'Insert eccentericity parallel of y Axis'
	write(*,*) 'NOTE THAT YOU SUBTRACT CENTROID FROM YOU POINT'
	read(*,*) e
	a=3.141593*(b**2.0)/2.0
	m=3.141593*b
	r=0.11*(b**4.0)
	t=3.141593*(b**4.0)/8.0
	i=r+a*e**2.0
	o=t+a*c**2.0
	p=a*c*e
	l=i+o
	g=sqrt(i/a)
	j=sqrt(o/a)
	u=((i+o)/2.0)+sqrt(((i-o)/2.0)**2.0)+(p**2.0)
	v=((i+o)/2.0)-sqrt(((i-o)/2.0)**2.0)+(p**2.0)
	n=-1*((2*p)/(i-o))
	write(*,*) 'Area =',a
	write(*,*) 'Prameter =',m
	write(*,*) 'Inertia of x =',i
	write(*,*) 'Inertia of y =',o
	write(*,*) 'Product of Inertia =',p
	write(*,*) 'Polar Moment of Inertia =',l
	write(*,*) 'Radius of Gyration of x =',g
	write(*,*) 'Radius of Gyration of y =',j
	write(*,*) 'Inertia of u =',u
	write(*,*) 'Inertia of v =',v
	write(*,*) 'tan(2*rotation) =',n
	elseif(z==7.0)then
	write(*,*) 'Welcome to Quarter-Circle'
	write(*,*) 'Insert radius with my thanks'
	read(*,*) b
	write(*,*) 'Insert eccentericity parallel of x Axis'
	write(*,*) 'NOTE THAT YOU SUBTRACT CENTROID FROM YOUR POINT'
	read(*,*) c
	write(*,*) 'Insert eccentericity parallel of y Axis'
	write(*,*) 'NOTE THAT YOU SUBTRACT CENTROID FROM YOU POINT'
	read(*,*) e
	a=3.141593*(b**2.0)/4.0
	m=0.5*3.141593*b
	r=0.055*(b**4.0)
	t=0.055*(b**4.0)
	i=r+a*e**2.0
	o=t+a*c**2.0
	p1=a*c*e+((b**4.0)*(1+(4*3.141593*(0.424**2)))/16.0)
	p2=a*c*e-((b**4.0)*(1+(4*3.141593*(0.424**2)))/16.0)
	l=i+o
	g=sqrt(i/a)
	j=sqrt(o/a)
	u=((i+o)/2.0)+sqrt(((i-o)/2.0)**2.0)+(p**2.0)
	v=((i+o)/2.0)-sqrt(((i-o)/2.0)**2.0)+(p**2.0)
	n=-1*((2*p)/(i-o))
	write(*,*) 'Area =',a
	write(*,*) 'Prameter =',m
	write(*,*) 'Inertia of x =',i
	write(*,*) 'Inertia of y =',o
	write(*,*) 'Product of Inertia =',p1
	write(*,*) 'Product of Inertia =',p2
	write(*,*) 'Polar Moment of Inertia =',l
	write(*,*) 'Radius of Gyration of x =',g
	write(*,*) 'Radius of Gyration of y =',j
	write(*,*) 'Inertia of u =',u
	write(*,*) 'Inertia of v =',v
	write(*,*) 'tan(2*rotation) =',n
	end if
	write(*,*) 'Insert any value to Exit'
	read(*,*) x
	x=x
	write(*,*) 'Good Bye',x
	end