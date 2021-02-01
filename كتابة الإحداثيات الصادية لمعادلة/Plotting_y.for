	implicit none
	real x,y,z,s
	integer i
	write(*,*)'insert x'
	read(*,*)x
	write(*,*)'insert interval'
	read(*,*)s
	x=x
	!ÏÉ åæ ÈÏÇíÉ ÇáÍÕÇáÉ ¡ ÈãÚäì ÊÇäí åæ Ãæá ÚäÕÑ İ ÇáãÚÇÏáÉ æ ÏÉ Çááí ÇäÊ ÈÊÏÎáå
	do i=1,10,1
	!do index=first object,last object,step or interval
	y=2.0*x
	!Ïí ÈŞì åí ÇáãÚÇÏáÉ ÈÊÇÚÊß Çááí ÇäÊ ßãÈÑãÌ ÈÊÏÎáåÇ æ ÈÊÙÈØåÇ áãÓÊÎÏã ÇáÈÑäÇãÌ
	write(*,*) '(x,y)= (',x,'  ,',y,'   )'
	x=x+s
	!Ïí åí ãÚÇÏáÉ ÇáãÓÇİÉ Èíä ßá (Ó) æ Çá(Ó) Çááí ÈÚÏåÇ
	!""the interval = s""
	!ÚÔÇä ãÊŞÏÑÔ ÊÎáí ÇáãÓÇİÉ Èíä ßá (Ó) æ Çá(Ó) Çááí ÈÚÏåÇ ãÓÇİÉ áæÛÇÑíÊãíÉ ÍÇáíÇğ ¡ İÇäÊ ãÓÇİÊß ÎØíÉ 
      !æ ÇáãÓÊÎÏã åæ Çááí ÈíÏÎáåÇ
	end do
	read(*,*)z
	end
      !this program is a test for plloting any formula , so i made a 1st degree one to make sure this kind of 
	!typing is correct ^_^ i made it hahaha :D