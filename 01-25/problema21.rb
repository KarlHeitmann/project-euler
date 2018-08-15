=begin

Let d(n) be defined as the sum of proper divisors of n (numbers less than n which divide evenly into n).
If d(a) = b and d(b) = a, where a ≠ b, then a and b are an amicable pair and each of a and b are called amicable numbers.

For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; therefore d(220) = 284. The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.

Evaluate the sum of all the amicable numbers under 10000.

=end

def divisores(n)
  divisors = []
  if (n == 1) or (n == 2) or (n == 3)
    return [1]
  else
    #(1..(n-1)).each do |i|
    (1..((n/2)+1)).each do |i|
    #(1..(Math.sqrt(n) + 1)).each do |i|
      divisors << i if (n % i) == 0
    end
    return divisors
  end
end

def suma_divisores(n)
  suma = 0
  divisores(n).each { |n| suma += n }
  return suma
end

#divisores(3628800)
#divisores 220
#
puts suma_divisores(220)
puts suma_divisores(284)

suma_general = 0

#target = 10000
target  = 10000
#puts suma_divisores(target)

(1..target).each do |i|
  (i..target).each do |j|
    if (suma_divisores(i) == j) and (i == suma_divisores(j))
      suma_general += i + j
    end
  end
end

puts suma_general
#
