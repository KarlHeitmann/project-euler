require 'awesome_print'


def factorial(num)
  if (num < 2)
    return 1
  else
    return num * factorial(num - 1)
  end
end

fac = 0

10.times do |i|
  fac = factorial(i+1).to_s
end

suma = 0
for i in 0..fac.length do
  suma += fac[i].to_i
end

ap fac
ap suma

fac = factorial(100).to_s

ap fac
suma = 0
for i in 0..fac.length do
  suma += fac[i].to_i
end
ap suma


