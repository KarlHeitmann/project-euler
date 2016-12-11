require 'awesome_print'

OBJ = 10001
cuenta = OBJ

i=1

primos = []

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

while cuenta > 0 do
  if i.is_primo?
    primos << i
    cuenta = cuenta - 1
  end
  i = i + 1
end

ap primos

