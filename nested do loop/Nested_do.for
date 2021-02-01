	implicit none
	integer i,j
	do i=1,10,1	   !every object of the 1st do loop is multiplied with all
	do j=1,5,2	   !objects of the 2nd do loop 
	write(*,*)i*j  !example : 1*1 then 1*3 then 1*5 then 2*1
	end do		   !then 2*3 then 2*5 until 10*5
	end do
	end