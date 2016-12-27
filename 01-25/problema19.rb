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

SEGUNDOS_POR_DIA = 60*60*24

DIAS_POR_MES_BISIESTO = { 0 => 31, 1 => 28, 2 => 31, 3 => 30, 4 => 31, 5 => 30, 6 => 31, 7 => 31, 8 => 30, 9 => 31, 10 => 30, 11 => 31 }
DIAS_POR_MES = { 0 => 31, 1 => 28, 2 => 31, 3 => 30, 4 => 31, 5 => 30, 6 => 31, 7 => 31, 8 => 30, 9 => 31, 10 => 30, 11 => 31 }



anio = 1900
mes = 0
dia = 1

def leap_year?(year)
  if year % 4 == 0
    if year % 100 == 0
      if year % 400 == 0
        return true
      end
      return false
    end
    return true
  end
  false
end


domingos_primero = 0
cuenta_meses = 0


start = Time.now

while anio < 2001 do
  if leap_year? 1900
    #estamos en anio bisiesto
    dia = dia + DIAS_POR_MES_BISIESTO[mes]
    dia = dia % 7
  else
    #estamos en anio normal
    dia = dia + DIAS_POR_MES_BISIESTO[mes]
    dia = dia % 7
  end
  if (dia == 0)
    if anio > 1900
      domingos_primero += 1
    end
  end

  mes = ((mes + 1) % 12)
  if mes == 0
    anio += 1
  end
end

finish = Time.now

ap domingos_primero
ap cuenta_meses
ap finish - start


