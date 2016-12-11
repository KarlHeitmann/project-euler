#
#
#By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that
#the 6th prime is 13.
#
#What is the 10 001st prime number?
#

require 'awesome_print'

#OBJ = 6
OBJ = 10001

cuenta = OBJ

i=1

primos = []

class Fixnum
  def is_primo?
    return false if self < 2
    return true if self == 2
    return true if self == 3
    return false if self == 4
    for i in 2..(self/2) do
      return false if (self % i) == 0
    end
    return true
  end
end

while cuenta > 0 do
  if i.is_primo?
    primos << i
    cuenta = cuenta - 1
  end
  i = i + 1
end

ap primos


