# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

puts "Hola Mundo, esto es un contador"

puts 14 % 7
puts

suma = 0

1000.times do |i|

  if ((i % 3) == 0) or ((i % 5) == 0)
    puts "Multiplo de 3 o de 5!"
    suma = suma + i
    repetido = true
    puts "Valor de i: " + i.to_s
    puts "Valor de suma: " + suma.to_s
  end
end


puts "Fin del programa"
