# Number letter counts
# Problem 17
#
# If the numbers 1 to 5 are written out in words: one, two, three, four, five,
# then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.
#
# If all the numbers from 1 to 1000 (one thousand) inclusive were written out in
# words, how many letters would be used?
#
# NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and
# forty-two) contains 23 letters and 115 (one hundred and fifteen) contains 20
# letters. The use of "and" when writing out numbers is in compliance with
# British usage.
#

require "awesome_print"


DIC_USAR = {
  1 => "one",
  2 => "two",
  3 => "three",
  4 => "four",
  5 => "five",
  6 => "six",
  7 => "seven",
  8 => "eight",
  9 => "nine",
  10 => "ten",
  11 => "eleven",
  12 => "twelve",
  13 => "thirteen",
  14 => "fourteen",
  15 => "fifteen",
  16 => "sixteen",
  17 => "seventeen",
  18 => "eighteen",
  19 => "nineteen",
  20 => "twenty",
  30 => "thirty",
  40 => "forty",
  50 => "fifty",
  60 => "sixty",
  70 => "seventy",
  80 => "eighty",
  90 => "ninety",
  100 => "hundred",
  1000 => "onethousand"
}


def cuenta_letras(num)
  if num < 20
    return DIC_USAR[num + 1].length
  elsif num < 100
    decena = (num / 10) * 10
    unidad = num % 10
    if (unidad == 0)
      return DIC_USAR[decena].length
    else
      return DIC_USAR[decena].length + DIC_USAR[unidad].length
    end
  elsif num < 1000
    if (num % 100) == 0
      return DIC_USAR[num/100].length + DIC_USAR[100].length
    else
      suma = DIC_USAR[100].length + "and".length
      centena = num / 100
      decena = (num / 10) % 10
      unidad = num % 10
      if decena < 1
        return suma + DIC_USAR[unidad].length
      elsif decena < 2
        return suma + DIC_USAR[num%100].length
      else
        if (unidad == 0)
          return suma + DIC_USAR[decena].length
        else
          return suma + DIC_USAR[decena].length + DIC_USAR[unidad].length
        end
      end
    end
  else num == 1000
    return DIC_USAR[num].length
  end
end

cuenta = 0

1000.times do |i|
  ap i+1
  cuenta += cuenta_letras(i+1)
end


ap cuenta


