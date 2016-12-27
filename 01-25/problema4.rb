#
#
#  A palindromic number reads the same both ways. The largest palindrome made from
# the product of two 2-digit numbers is 9009 = 91 × 99.
#
#  Find the largest palindrome made from the product of two 3-digit numbers.
#
#
#
LARGO = 100

require 'awesome_print'

def es_palindromo? (num)
  num = num.to_s
  largo = num.length
  i = 0
  if (largo%2) == 0
    while i <= largo/2 do
      return false if num[i] != num[-(i+1)]
      i = i + 1
    end
  else
    while i < largo/2 do
      return false if num[i] != num[-(i+1)]
      i = i + 1
    end
  end
  return true

end


=begin
10000.times do |i|
  ap i if es_palindromo? i

end
=end

for i in LARGO..LARGO*10
  for j in LARGO..LARGO*10
    ap i * j if es_palindromo? (i * j)
  end
end



