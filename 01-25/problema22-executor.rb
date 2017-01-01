require 'awesome_print'
require 'byebug'
require 'rubygems'
require 'json'

POSICIONES = { 'A' => 1, 'B' => 2, 'C' => 3, 'D' => 4, 'E' => 5, 'F' => 6, 'G' => 7, 'H' => 8, 'I' => 9, 'J' => 10, 'K' => 11, 'L' => 12, 'M' => 13, 'N' => 14, 'O' => 15, 'P' => 16, 'Q' => 17, 'R' => 18, 'S' => 19, 'T' => 20, 'U' => 21, 'V' => 22, 'W' => 23, 'X' => 24, 'Y' => 25, 'Z' => 26 } 
buffer = File.open('p022_names_ordered.txt', 'r').read
nombres = JSON.parse(buffer)

#ap nombres

score = 0


def calculo_valor(palabra)
  val = 0
  for i in 0..(palabra.length - 1) do
    val = val + POSICIONES[palabra[i]]
  end
  return val
end

i = 0
nombres.each do |nombre|
  i += 1
  score += calculo_valor(nombre) * i
  if i == 938
    ap nombre
    ap calculo_valor nombre
    ap score
  end
end

ap score

