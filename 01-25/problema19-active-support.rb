# 
#
# You are given the following information, but you may prefer to do some
# research for yourself.
#
#     1 Jan 1900 was a Monday.
#     Thirty days has September,
#     April, June and November.
#     All the rest have thirty-one,
#     Saving February alone,
#     Which has twenty-eight, rain or shine.
#     And on leap years, twenty-nine.
#     A leap year occurs on any year evenly
#     divisible by 4, but not on a century unless it
#     is divisible by 400.
#
# How many Sundays fell on the first of the
# month during the twentieth century (1 Jan 1901
# to 31 Dec 2000)?

require 'awesome_print'
require 'date'

require 'active_support/all'

anio = 1900
#inicial = Time.parse("1900-01-01 00:00:00 UTC")
#inicial = Time.new(1900,1,1)
inicial = DateTime.new(1901,1,1)
iterator = inicial

domingos_primero = 0
cuenta_meses = 0

start = Time.now

while iterator.year < 2001 do
  if iterator.sunday? and (iterator.day == 1)
    domingos_primero += 1
  end
  iterator = iterator + 1.month
  cuenta_meses += 1

end

finish = Time.now

ap inicial
ap iterator
ap domingos_primero
ap cuenta_meses
ap finish - start


