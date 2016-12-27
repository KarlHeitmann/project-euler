#
#
#  The sequence of triangle numbers is generated by adding the natural numbers. So
# the 7th triangle number would be 1 + 2 + 3 + 4 + 5 + 6 + 7 = 28. The first ten
# terms would be:
#
#     1, 3, 6, 10, 15, 21, 28, 36, 45, 55, ...
#
# Let us list the factors of the first seven triangle numbers:
#
#     1: 1
#     3: 1,3
#     6: 1,2,3,6
#     10: 1,2,5,10
#     15: 1,3,5,15
#     21: 1,3,7,21
#     28: 1,2,4,7,14,28
#
#  We can see that 28 is the first triangle number
# to have over five divisors.
#
#  What is the value of the first triangle number
# to have over five hundred divisors?
#
#
# vencedor = 16240435200
# tiene al menos 22 divisores
OBJ = 50

require 'awesome_print'
puts "I have PID #{Process.pid}"

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

primos = [2]

k = 2

50.times do |i|
  k += 1
  while not(k.is_primo?) do
    k += 1
  end
  primos << k
end

ap primos


fin = true




i = 3

divis_max = 0
num_max = 0
i_max = 3

start = Time.now
start_max = Time.now
finish = Time.now
finish_max = Time.now

desc_start = Time.now
desc_fin = Time.now

actual = 3

Signal.trap("TERM") {
  ap "i = #{i}"
  ap "triangular mas divisores: #{num_max}"
  ap "cantidad de divisores: #{divis_max}"
  ap "es el numero: #{i_max}"
  ap "le llevo #{finish_max - start_max}"
  ap "ahora se demora: #{desc_fin - desc_fin}"
  ap "tiempo de vida: #{finish - Time.now}"
  puts
}

while(fin) do
  actual += i

  k = 2
  reduc = actual
  div = []
  desc_start = Time.now if (i % 1000) == 0
  j = 0

  termino = false
  while j < primos.count do
    if (reduc % primos[j]) == 0
      div << primos[j]
      reduc = reduc / primos[j]
      break if reduc < primos[j]
    else
      j += 1
    end
  end

  desc_fin = Time.now if (i % 1000) == 0
  #ap actual
  #ap divis
  if div.count > divis_max
    divis_max = div.count
    i_max = i
    num_max = actual
    start_max = desc_start
    finish_max = desc_fin
  end
  fin = false if div.count >= OBJ
  i += 1
end
finish = Time.now

ap actual
ap divis_max
ap i
ap finish - start

