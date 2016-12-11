#
#
#The following iterative sequence is defined for the set of positive integers:
#
#n → n/2 (n is even)
#n → 3n + 1 (n is odd)
#
#Using the rule above and starting with 13, we generate the following sequence:
#13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
#
#It can be seen that this sequence (starting at 13 and finishing at 1) contains
#10 terms. Although it has not been proved yet (Collatz Problem), it is thought
#   that all starting numbers finish at 1.
#
#   Which starting number, under one million, produces the longest chain?
#
#   NOTE: Once the chain starts the terms are allowed to go above one million.

require 'awesome_print'


def collatz(n, recursion = 0)
  ap "Recursion: #{recursion}"
  ap n
  if n == 1
    return recursion
  elsif (n%2) == 0
    recursion = collatz(n/2, recursion + 1)
  else
    recursion = collatz(3*n + 1, recursion + 1)
  end
  return recursion
end

=begin

rec_max = 0
num_max = 0
inicio = Time.now
#1000000.times do |i|
1000000.times do |i|
  next if i == 0
  rec = collatz i
  if rec > rec_max
    rec_max = rec
    num_max = i
  end
end
final = Time.now

ap final-inicio

ap num_max
ap rec_max

=end
