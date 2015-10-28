(1..100).each { |x| 
   print "fizz " if (x % 3) == 0
   print "buzz " if (x % 5) == 0
   puts " (#{x})"
} 
