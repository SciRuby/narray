# TEST IS BROKEN

require 'narray/narray'

x = NArray.complex(1024,1024).indgen!

p x
puts 'executing fftw ...'
t1 = Process.times.utime
y = FFTW.fftw( x, 1 )
t2 = Process.times.utime
print "time: ",t2 - t1,"\n"
p y

exit

x = NArray.complex(128,128).indgen!
10000.times{ x = NArray::FFTW.fftw( x, 1 ) }
