	program rw
	real yp(7),xp(7)

	xp(1)=0.1
	xp(2)=0.05
	xp(3)=0.01
	xp(4)=0.005
	xp(5)=0.001
	xp(6)=0.001
	xp(7)=0.0001
	xm=0.0
	xx=0.0
	do i=1,7
	   xp(i)=log(xp(i))
	   xm=xm+xp(i)
	   xx=xx+xp(i)*xp(i)
	   sxx=sxx+(xp(i)-xm)*(xp(i)-xm)
	end do
	sxx=0.0
	xmm=xm/7.0
	do i=1,7
	   sxx=sxx+(xp(i)-xmm)*(xp(i)-xmm)
	end do

	open(10,file='data_zs.d', status='old')
 10	read(10,*,end=20) iy,x90,(yp(i), i=1,7)
	ym=0.0
	xy=0.0
	do i=1,7
	   yp(i)=log(yp(i))
	   ym=ym+yp(i)
	   xy=xy+yp(i)*xp(i)
	end do
c ... fit yp=a*xp+b
	a=(7*xy-xm*ym)/(7*xx-xm*xm)
	b=(ym-a*xm)/7.0
	chi=0.0
	do i=1,7
	   chi=chi+(yp(i)-a*xp(i)-b)**2
	end do
	print *,iy,a,1.0/(1.0-a),chi,sqrt(chi/(5*sxx))

	go to 10
 20	close(10)
	end
