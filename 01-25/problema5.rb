

# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
#
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
#
require 'awesome_print'

def factorial(n)
  producto = 1
  for i in 1..(n+1)
    producto = producto*i
  end
  return producto
end

divisores = [2, 3, 4, 5, 6, 7, 8, 9, 10]


3000.times do |i|
  cuenta = 0
  divisores.each do |div|
      break if (i % div) != 0
      cuenta += 1
  end
  ap i if cuenta == divisores.length
end

divisores = [2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19]

1000000000.times do |i|
  cuenta = 0
  divisores.each do |div|
      break if (i % div) != 0
      cuenta += 1
  end
  ap i if cuenta == divisores.length
end
