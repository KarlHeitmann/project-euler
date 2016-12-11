# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
#
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
#
require 'awesome_print'

require 'rational'
num = (1..20).inject(1) { |result, n| result.lcm n }
ap "Smallest evenly divisible number is #{ num }."

=begin
def lcm(a,b)
  return (a*b/a.gcd(b))
end
=end


