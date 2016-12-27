# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

puts "Hola Mundo, esto es un contador"

puts 14 % 7
puts

suma = 0

repetido = false

1000.times do |i|

  if (i % 3) == 0 
    puts "Multiplo de 3!"
    suma = suma + i
    repetido = true
    puts "Valor de i: " + i.to_s
    puts "Valor de suma: " + suma.to_s
  end
  
  if ((i % 5) == 0 ) and (not(repetido))
    puts "Multiplo de 5!"
    suma = suma + i
    puts "Valor de i: " + i.to_s
    puts "Valor de suma: " + suma.to_s
  end
  repetido = false
end


puts "Fin del programa"
