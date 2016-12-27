#
#
#2**15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.
#
#What is the sum of the digits of the number 2**1000?
#

require 'awesome_print'

OBJ = 1000

result = 2**OBJ

suma = 0
for i in 0..result.to_s.length do
  suma = suma + result.to_s[i].to_i
end

ap suma

