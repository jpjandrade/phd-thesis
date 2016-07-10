      iy0=0
      n=0
      open(10,file='M1velocity.d',status='old')
 10   read(10,*,end=20) iy,im,id,v
      if (iy.ne.iy0) then
         if (iy0.gt.0) print *,iy0,vm
         vm=0
         iy0=iy
         n=0
      else
         n=n+1
         vm=vm+(v-vm)/float(n)
      end if
      go to 10
 20   close(10)
      print *,iy0,vm
      end
