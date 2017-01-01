#
# Using names.txt (right click and 'Save Link/Target As...'), a 46K text file
# containing over five-thousand first names, begin by sorting it into
# alphabetical order. Then working out the alphabetical value for each name,
# multiply this value by its alphabetical position in the list to obtain a name
# score.
#
# For example, when the list is sorted into alphabetical order, COLIN, which is
# worth 3 + 15 + 12 + 9 + 14 = 53, is the 938th name in the list. So, COLIN
# would obtain a score of 938 × 53 = 49714.
#
# What is the total of all the name scores in the file?
#

require 'awesome_print'
require 'byebug'
require 'rubygems'
require 'json'
puts "I have PID #{Process.pid}"


f = File.open('p022_names.txt', "r")
data_raw = f.read.gsub("\"", "").split(",")
f.close

#ap data_raw

data_ordenada = []

posiciones = { 'A' => 1, 'B' => 2, 'C' => 3, 'D' => 4, 'E' => 5, 'F' => 6, 'G' => 7, 'H' => 8, 'I' => 9, 'J' => 10, 'K' => 11, 'L' => 12, 'M' => 13, 'N' => 14, 'O' => 15, 'P' => 16, 'Q' => 17, 'R' => 18, 'S' => 19, 'T' => 20, 'U' => 21, 'V' => 22, 'W' => 23, 'X' => 24, 'Y' => 25, '>' => 26 }

def compare(a, b, i)
  if a.nil? and not(b.nil?)
    return b
  elsif not(a.nil?) and b.nil?
    return a
  elsif a.nil? and b.nil?
    return a
  else
    if (a[i] == nil) and (b[i] != nil)
      return b
    elsif (a[i] != nil) and (b[i] == nil)
      return a
    elsif (a[i] == nil) and (b[i] == nil)
      return a
    else
      if a[i] < b[i]
        return b
      elsif a[i] > b[i]
        return a
      else
        return compare(a, b, i + 1)
      end
    end
  end
end


anterior = "ZZZZZZZZZZZZ"

j = 0

data_raw.each do |d|
  flag = false
  for i in 0..data_ordenada.length do
    if compare(data_ordenada[i], d, 0) == data_ordenada[i]
      data_ordenada.insert(i, d)
      flag = true
      break
    end
  end

  j += 1
  ap j
  if data_ordenada.empty?
    data_ordenada << d
    next
  end
  if not(flag)
    data_ordenada << d
  end
end

ap data_ordenada

$stdout = File.open('p022_names_ordered.txt', 'w')
puts data_ordenada.to_json



