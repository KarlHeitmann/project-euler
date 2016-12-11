#
#
#The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
#
#Find the sum of all the primes below two million.
#

require 'awesome_print'

OBJ = 2000000


class Fixnum
  def is_primo?
    return false if self < 2
    return true if self < 4
    return false if (self % 2) == 0
    return true if self < 9
    return false if (self % 3) == 0
    r = Math.sqrt(self).to_i
    f = 5
    while f <= r do
      return false if (self % f) == 0
      return false if (self % (f+2)) == 0
      f = f + 6
    end
    return true
  end
end

suma = 0

OBJ.times do |num|
  if num.is_primo?
    suma = suma + num
  end
end
ap suma
