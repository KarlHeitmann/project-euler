#
#
#The sum of the squares of the first ten natural numbers is,
#12 + 22 + ... + 102 = 385
#
#The square of the sum of the first ten natural numbers is,
#(1 + 2 + ... + 10)2 = 552 = 3025
#
#Hence the difference between the sum of the squares of the first ten natural
#numbers and the square of the sum is 3025 − 385 = 2640.
#
#Find the difference between the sum of the squares of the first one hundred
#natural numbers and the square of the sum.
#
#
require 'awesome_print'

OBJ = 100

sum1=0
sum2=0
OBJ.times do |i|
  sum1 = sum1+ (i+1)*(i+1)
  sum2 = sum2+(i+1)
end

sum2=sum2*sum2

ap "sum1 = #{sum1}"
ap "sum2 = #{sum2}"
ap "sum2 - sum1 = #{sum2-sum1}"



