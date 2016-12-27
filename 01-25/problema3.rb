require 'awesome_print'

def es_primo?(num)
  return true if num == 2
  if num > 2
    i = 2
    while (i < num) do
#      ap "#{num} % #{i} = #{num % i}"
      return false if (num%i) == 0
      i = i + 1
    end
    return true
  else
    return false
  end
end

#The prime factors of 13195 are 5, 7, 13 and 29.

#What is the largest prime factor of the number 600851475143 ?

OBJETIVO = 600851475143

reduccion = OBJETIVO

i = 2 

factores = []

while reduccion > 1 do
  if (reduccion % i) == 0
    reduccion = reduccion / i
    factores << i
    puts reduccion
    puts OBJETIVO
  end
  i = i+1
end

ap factores

primos = []

factores.each do |f|
  primos << f if es_primo? f
end

ap primos


