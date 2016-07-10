	program rw
	real yp(7),xp(7)

	xp(1)=0.1
	xp(2)=0.05
	xp(3)=0.01
	xp(4)=0.005
	xp(5)=0.001
	xp(6)=0.001
	xp(7)=0.0001

	open(10,file='data_zs.d', status='old')
 10	read(10,*,end=20) iy,x90,(yp(i), i=1,7)
	do i=1,7
	   write(12,*) xp(i),yp(i),log(xp(i)),log(yp(i))
	end do
	write(12,*) ' '
	write(12,*) ' '
	go to 10
 20	close(10)
	end
