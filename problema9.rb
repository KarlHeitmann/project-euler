#
#
#A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
#a2 + b2 = c2
#
#For example, 32 + 42 = 9 + 16 = 25 = 52.
#
#There exists exactly one Pythagorean triplet for which a + b + c = 1000.
#Find the product abc.
#

require 'awesome_print'

a = 0
b = 0
c = 0
s = 1000

for a in 1..(s/3+1) do
  for b in a..(s/2 + 1) do
    c = s-b-a

    if ((a*a) + (b*b)) == (c*c)
      ap a
      ap b
      ap c
      ap a+b+c
      ap a*b*c
    end
  end
end

=begin
pitagoricos = [[3, 4, 5],   [5, 12, 13],   [8, 15, 17],   [7, 24, 25],
[20, 21, 29],  [12, 35, 37],  [9, 40, 41],   [28, 45, 53],
[11, 60, 61],  [16, 63, 65],  [33, 56, 65],  [48, 55, 73],
[13, 84, 85],  [36, 77, 85],  [39, 80, 89],  [65, 72, 97] ]

pitagoricos.each do |candidato|
  if candidato[0] + candidato[1] + candidato[2] == 100
    ap candidato
    ap "Exito"
  end
  ap candidato
  ap candidato[0] + candidato[1] + candidato[2] 
end
=end
