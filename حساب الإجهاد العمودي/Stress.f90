	implicit none
	real n1,n2,n3,x1,x2,x3,y1,y2,y3,x4,y4,x5,y5,x6,y6,s,b,h,i,o,p
	real j,k,q,f1,f2,v,a,z,m,r,d
	write(*,*)'ENJOY TO GET NORMAL STRESS DESTRIBUTION WITH'
	write(*,*)'MY OPTIONS HERE'
	write(*,*)'--------------------------------------------'
	write(*,*) '(1)-Press 1 for plotting Moments directly'
	write(*,*) '(2)-Press 2 for plotting Normal forces'
	write(*,*) '    and eccentericities from Centroid instead'
	read(*,*)m
	m=m
	if(m==2.0)then
	write(*,*) 'NOTE THAT ALL THE COORDINATES ARE FROM CENTROID' 
	write(*,*) 'Insert 1st Normal force then plot its coordinates'
	read(*,*)n1
	read(*,*)x1
	read(*,*)y1
	write(*,*) 'Normal Force 1 =',n1
	write(*,*) 'Location (1) =','(',x1,',',y1,')'
	write(*,*) 'NOTE THAT ALL THE COORDINATES ARE FROM CENTROID' 
	write(*,*) 'Insert 2nd Normal force then plot its coordinates'
	read(*,*)n2
	read(*,*)x2
	read(*,*)y2
	write(*,*) 'Normal Force 2 =',n2
	write(*,*) 'Location (2) =','(',x2,',',y2,')'
	write(*,*) 'NOTE THAT ALL THE COORDINATES ARE FROM CENTROID'
	write(*,*) 'Insert 3rd Normal force then plot its coordinates'											  
	read(*,*)n3
	read(*,*)x3
	read(*,*)y3
	write(*,*) 'Normal Force 3 =',n3
	write(*,*) 'Location (3) =','(',x3,',',y3,')'
      s=n1+n2+n3
      b=((n1*x1)+(n2*x2)+(n3*x3))
	h=((n1*y1)+(n2*y2)+(n3*y3))
	write(*,*)'------------------------------------------------------'
	write(*,*)'Your Straining Actions Are'
	write(*,*)'Normal Forces (N) =',s
	write(*,*)'Moment arround x Axis of Centroid (Mx) =',h
	write(*,*)'Moment arround y Axis of Centroid (My) =',b
	write(*,*)'------------------------------------------------------'
	write(*,*)'Now you can Insert properties of your Area'
	write(*,*)'Insert Area (A)'
	read(*,*) a
	write(*,*) 'Area (A) =',a
	write(*,*)'Insert Inertia of x (Ix)'
	read(*,*)i
	write(*,*) 'Inertia of x (Ix) =',i
	write(*,*)'Insert Inertia of y (Iy)'
	read(*,*)o
	write(*,*) 'Inertia of y (Iy) =',o
	write(*,*)'Insert Product of Inertia (Ixy)'
	read(*,*)p
	write(*,*) 'Product of Inertia (Ixy) =',p
	write(*,*) 'Plot the Coordinates of the 1st point you want to'
 	write(*,*) 'measure its stress in respect'
	write(*,*) '--- ---'
	write(*,*) 'Insert (X1)'
	read(*,*)x4
	write(*,*) 'X1 =',x4
	write(*,*) 'Insert (Y1)'
	read(*,*)y4
	write(*,*) 'Y1 =',y4
	write(*,*) 'So the Point is'
	write(*,*) '(X1,Y1) =','(',x4,',',y4,')'
	write(*,*) '--- ---'
	write(*,*) 'Plot the Coordinates of the 2nd point you want to'
	write(*,*) 'measure its stress in respect'
	write(*,*) '--- ---'
	write(*,*) 'Insert (X2)'
	read(*,*)x5
	write(*,*) 'X1 =',x5
	write(*,*) ' Insert (Y2)'
	read(*,*)y5
	write(*,*) 'Y1 =',y5
	write(*,*) ' So the Point is'
	write(*,*) '(X2,Y2) =','(',x5,',',y5,')'
	s=n1+n2+n3
      b=((n1*x1)+(n2*x2)+(n3*x3))
	h=((n1*y1)+(n2*y2)+(n3*y3))
	j=((b*i)-(h*p))
	k=((h*o)-(b*p))
	z=((i*o)-(p**2.0))
	x6=-(s*z)/(a*j)
	y6=-(s*z)/(a*k)
	q=(-j)/k
	r=atan(q)
	d=r*180.0/3.141593
      f1=(s/a)+((j*x4)+(k*y4))/z
	f2=(s/a)+((j*x5)+(k*y5))/z
	write(*,*)'------------------------------------------------------'
	write(*,*) 'YOUR STRESSES (the most important)'
      write(*,*) 'Your 1st Stress =',f1
	write(*,*) 'Your 2nd Stress =',f2
	write(*,*)'-----------------------'						   
	write(*,*) 'FOR YOUR NEUTRAL AXIS'
	write(*,*) 'Points cutting Centroid Axes'
	write(*,*) '---'
	write(*,*) '(X,0) =','(',x6 ,',',' 0 )'
	write(*,*) '(0,Y) =','( 0 ',',',y6 ,')'
	write(*,*) 'Bearing of Neutral Axis from the Positive X Axis'
	write(*,*) '---'
	write(*,*) 'tan(angle of rotation) =',q
	write(*,*) 'Angle of Rotation (Degree) =',d
	write(*,*) 'Angle of Rotation (Radian) =',r
	write(*,*)'------------------------------------------------------'
	write(*,*) 'Make sure that your results are correct'
	write(*,*) 'GOOD LUCK'
	write(*,*) 'Insert any value to Exit'
	read(*,*) v
	v=v
	write(*,*) 'Good Bye',v
	elseif(m==1.0)then
	write(*,*) 'Insert the sum of Total Normal Forces (N)'
	read(*,*)s
	write(*,*)'Normal Forces (N) =',s
	write(*,*) 'Insert the Moment arround X Axis of Centroid (Mx)'
	read(*,*)h
	write(*,*) 'Moment arround X Axis of Centroid (Mx) =',h
	write(*,*) 'Insert the Moment arround Y Axis of Centroid (My)'
	read(*,*)b
	write(*,*) 'Moment arround Y Axis of Centroid (My) =',b
	write(*,*)'------------------------------------------------------'
	write(*,*)'Now you can Insert properties of your Area'
	write(*,*)'Insert Area (A)'
	read(*,*) a
	write(*,*) 'Area (A) =',a
	write(*,*)'Insert Inertia of x (Ix)'
	read(*,*)i
	write(*,*) 'Inertia of X Axis (Ix) =',i
	write(*,*)'Insert Inertia of y (Iy)'
	read(*,*)o
	write(*,*) 'Inertia of Y Axis (Iy) =',o
	write(*,*)'Insert Product of Inertia (Ixy)'
	read(*,*)p
	write(*,*) 'Product of Inertia (Ixy) =',p
	write(*,*) '--- ---'
	write(*,*) 'Plot the Coordinates of the 1st point you want to'
 	write(*,*) 'measure its stress in respect'
	write(*,*) '--- ---'
	write(*,*) 'Insert (X1)'
	read(*,*)x4
	write(*,*) 'X1 =',x4
	write(*,*) 'Insert (Y1)'
	read(*,*)y4
	write(*,*) 'Y1 =',y4
	write(*,*) 'So the Point is'
	write(*,*) '(X1,Y1) =','(',x4,',',y4,')'
	write(*,*) '--- ---'
	write(*,*) 'Plot the Coordinates of the 2nd point you want to'
	write(*,*) 'measure its stress in respect'
	write(*,*) '--- ---'
	write(*,*) 'Inserst (X2)'
	read(*,*)x5
	write(*,*) 'X2 =',x5
	write(*,*) 'Insert (Y2)'
	read(*,*)y5
	write(*,*) 'Y2 =',y5
	write(*,*) 'So the Point is'
      write(*,*) '(X2,Y2) =','(',x5,',',y5,')'
	j=((b*i)-(h*p))
 	k=((h*o)-(b*p))
	z=((i*o)-(p**2.0))
	x6=-(s*z)/(a*j)
	y6=-(s*z)/(a*k)
	q=(-j)/k
	r=atan(q)
	d=r*180.0/3.141593
      f1=(s/a)+((j*x4)+(k*y4))/z
	f2=(s/a)+((j*x5)+(k*y5))/z
 	write(*,*)'------------------------------------------------------'
 	write(*,*) 'YOUR STRESSES (the most important)'
      write(*,*) 'Your 1st Stress =',f1
	write(*,*) 'Your 2nd Stress =',f2
	write(*,*)'-----------------------'						   
	write(*,*) 'FOR YOUR NEUTRAL AXIS'
	write(*,*) 'Points cutting Centroid Axes'
	write(*,*) '---'
	write(*,*) '(X,0) =','(',x6 ,',',' 0 )'
	write(*,*) '(0,Y) =','( 0 ',',',y6 ,')'
	write(*,*) 'Bearing of Neutral Axis from the Positive X Axis'
	write(*,*) '---'
	write(*,*) 'tan(angle of rotation) =',q
	write(*,*) 'Angle of Rotation (Degree) =',d
	write(*,*) 'Angle of Rotation (Radian) =',r
	write(*,*)'------------------------------------------------------'
	write(*,*) 'Make sure that your results are correct'
	write(*,*) 'GOOD LUCK'
	write(*,*) 'Insert any value to Exit'
	read(*,*) v
	v=v
	write(*,*) 'Good Bye',v
	end if
      end